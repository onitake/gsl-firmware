package Firmware::Silead;

use strict;
use IO::File;

our $MAGIC = 'GSLX';
our $FORMAT = 1;
our $HEADER_SIZE = 24;
our $PAGE_SIZE = 132;

sub _unpack_header {
	my ($header) = @_;
	return (unpack '(a4a4S4C4L)<', $header);
}

sub _unpack_page {
	my ($buffer) = @_;
	return (unpack '(S2a128)<', $buffer);
}

sub _pack_header {
	my ($model, @params) = @_;
	return pack '(a4a4S4C4L)<', $MAGIC, $model, $FORMAT, @params
}

sub _pack_page {
	my ($page, $data) = @_;
	return pack '(S2a128)<', $page, length $data, $data;
}

sub new {
	my ($class) = @_;
	return bless {
		pages => { },
		model => '',
		touches => 0,
		width => 0,
		height => 0,
		swapped => 0,
		xmirrored => 0,
		ymirrored => 0,
		tracking => 0,
	}, ref $class ? ref $class : $class;
}

sub load {
	my ($class, $handle) = @_;
	if (!ref $handle) {
		$handle = IO::File->new($handle, 'r');
	}
	if (!defined $handle) {
		$@ = "Invalid file handle";
		return undef;
	}
	binmode $handle;
	read $handle, my $header, $HEADER_SIZE;
	my ($magic, $model, $format, $touches, $width, $height, $swapped, $xmirrored, $ymirrored, $tracking, $pages) = _unpack_header $header;
	if ($magic ne $MAGIC) {
		$@ = "Invalid magic $magic";
		return undef;
	}
	if ($format ne $FORMAT) {
		$@ = "Invalid file format $format";
		return undef;
	}
	my $self = bless {
		pages => { },
		model => $model,
		touches => $touches,
		width => $width,
		height => $height,
		swapped => $swapped,
		xmirrored => $xmirrored,
		ymirrored => $ymirrored,
		tracking => $tracking,
	}, ref $class ? ref $class : $class;
	for (my $i = 0; $i < $pages; $i++) {
		read $handle, my $buffer, $PAGE_SIZE;
		my ($address, $size, $data) = _unpack_page $buffer;
		if (!$self->set_page($address, substr $data, 0, $size)) {
			return undef;
		}
	}
	return $self;
}

sub save {
	my ($self, $handle) = @_;
	if (!ref $handle) {
		$handle = IO::File->new($handle, 'w');
	}
	if (!defined $handle) {
		$@ = "Invalid file handle";
		return 0;
	}
	binmode $handle;
	my @pages = $self->get_pages;
	my $header = _pack_header $self->model, $self->touches, $self->width, $self->height, $self->swapped, $self->xmirrored, $self->ymirrored, $self->tracking, scalar(@pages);
	print $handle $header;
	for my $page (@pages) {
		my $pagedata = $self->get_page($page);
		my $buffer = _pack_page $page, $pagedata;
		print $handle $buffer;
	}
	return 1;
}

sub unpack {
	my ($class, $data) = @_;
	my $header = substr $data, 0, $HEADER_SIZE;
	my ($magic, $model, $format, $touches, $width, $height, $swapped, $xmirrored, $ymirrored, $tracking, $pages) = _unpack_header $header;
	if ($magic ne $MAGIC) {
		$@ = "Invalid magic $magic";
		return undef;
	}
	if ($format ne $FORMAT) {
		$@ = "Invalid file format $format";
		return undef;
	}
	my $self = bless {
		pages => { },
		model => $model,
		touches => $touches,
		width => $width,
		height => $height,
		swapped => $swapped,
		xmirrored => $xmirrored,
		ymirrored => $ymirrored,
		tracking => $tracking,
	}, ref $class ? ref $class : $class;
	for (my $i = 0; $i < $pages; $i++) {
		my $buffer = substr $HEADER_SIZE + $i * $PAGE_SIZE, $PAGE_SIZE;
		my ($address, $size, $data) = _unpack_page $buffer ;
		if (!$self->set_page($address, substr $data, 0, $size)) {
			return undef;
		}
	}
	return $self;
}

sub pack {
	my ($self) = @_;
	my $data = '';
	my @pages = $self->get_pages;
	my $header = _pack_header $self->model, $self->touches, $self->width, $self->height, $self->swapped, $self->xmirrored, $self->ymirrored, $self->tracking, scalar(@pages);
	$data .= $header;
	for my $page (@pages) {
		my $pagedata = $self->get_page($page);
		my $buffer = _pack_page $page, $pagedata;
		$data .= $buffer;
	}
	return $data;
}

sub import_scrambled {
	my ($self, $input) = @_;
	my $tscfg = '';
	for my $byte (split //, $input) {
		my $descrambled = chr(ord($byte) ^ 0x88);
		$tscfg .= $descrambled;
	}
	return $self->import_tscfg($tscfg);
}

sub import_tscfg {
	my ($self, $input) = @_;
	my ($cfg, $fw) = (0, '');
	for my $line (split /\n/, $input) {
		if ($cfg and $line =~ /};/) {
			$cfg = 0;
		}
		if ($line =~ /TS_CFG_DATA|GSLX68X_FW/) {
			$cfg = 1;
		}
		if ($cfg) {
			$line =~ s/\s//g;
			$line = lc($line);
			if ($line =~ /{0x([0-9a-f]+),0x([0-9a-f]+)},/) {
				my $address = hex($1);
				my $data = hex($2);
				$fw .= pack '(LL)<', $address, $data;
			}
		}
	}
	return $self->import_fw($fw);
}

sub import_fw {
	my ($self, $input) = @_;
	
	my $length = length $input;
	
	my ($page, $lastaddr, $data);
	for (my $offset = 0; $offset + 7 < $length; $offset += 8) {
		my $buffer = substr $input, $offset, 8;
		my ($addr, $value) = unpack '(L2)<', $buffer;
		if ($addr == 0xf0) {
			if (defined $data) {
				$self->set_page($page, $data) or return 0;
			}
			$page = $value;
			$lastaddr = undef;
			$data = '';
			printf "Got page 0x%02x\n", $page;
		} else {
			if (!defined $page) {
				$@ = "Invalid firmware: page command missing at start";
				return 0;
			}
			if ($addr > 128) {
				$@ = sprintf "Invalid firmware: invalid address %d at page 0x%02x, max 128", $addr, $page;
				return 0;
			}
			if (defined $lastaddr and $addr != $lastaddr + 4) {
				$@ = sprintf "Invalid firmware: non-consecutive at page 0x%02x, address 0x%02x, expected 0x%02x", $page, $addr, $lastaddr + 4;
				return 0;
			}
			$data .= substr $buffer, 4, 4;
			$lastaddr = $addr;
		}
	}
	if (defined $page and defined $data) {
		# the last page has not been stored yet
		return $self->set_page($page, $data);
	}
	return 1;
}

sub export_fw {
	my ($self) = @_;
	my $data = '';
	my @pages = $self->get_pages;
	for my $page (@pages) {
		my $pagedata = $self->get_page($page);
		$data .= pack '(L2)<', 0xf0, $page;
		my $length = length $pagedata;
		for (my $offset = 0; $offset + 3 < $length; $offset += 4) {
			my $word = substr $pagedata, $offset, 4;
			$data .= pack '(La4)<', $offset, $word;
		}
	}
	return $data;
}

sub set_page {
	my ($self, $page, $data) = @_;
	if ($page > 0xff) {
		$@ = "Invalid page number $page";
		return 0;
	}
	if (length $data > 128) {
		$@ = "Page too large";
		return 0;
	}
	$self->{pages}->{$page} = $data;
	return 1;
}

sub delete_page {
	my ($self, $page) = @_;
	if (!exists $self->{pages}->{$page}) {
		$@ = "Page number $page does not exist";
		return 0;
	}
	delete $self->{pages}->{$page};
	return 1;
}

sub get_pages {
	my ($self) = @_;
	return sort { $a <=> $b } keys %{$self->{pages}};
}

sub get_page {
	my ($self, $page) = @_;
	return $self->{pages}->{$page};
}

sub touches {
	return shift->{touches};
}

sub set_touches {
	my ($self, $value) = @_;
	$self->{touches} = $value;
}

sub model {
	return shift->{model};
}

sub set_model {
	my ($self, $value) = @_;
	$self->{model} = $value;
}

sub width {
	return shift->{width};
}

sub set_width {
	my ($self, $value) = @_;
	$self->{width} = $value;
}

sub height {
	return shift->{height};
}

sub set_height {
	my ($self, $value) = @_;
	$self->{height} = $value;
}

sub swapped {
	return shift->{swapped};
}

sub set_swapped {
	my ($self, $value) = @_;
	$self->{swapped} = $value;
}

sub xmirrored {
	return shift->{xmirrored};
}

sub set_xmirrored {
	my ($self, $value) = @_;
	$self->{xmirrored} = $value;
}

sub ymirrored {
	return shift->{ymirrored};
}

sub set_ymirrored {
	my ($self, $value) = @_;
	$self->{ymirrored} = $value;
}

sub tracking {
	return shift->{tracking};
}

sub set_tracking {
	my ($self, $value) = @_;
	$self->{tracking} = $value;
}

=head1 NAME

Firmware::Silead - Silead touchscren firmware packager

=head1 SYNOPSIS

 use Firmware::Silead;
 my $rep = Firmware::Silead->new();
 printf "width=%d height=%d num_touches=%d\n", $req->width, $rep->height, $rep->touches;
 $rep->add_page(0x00, "\0" x 128);
 $rep->save('firmware.fw');

 $rep = Firmware::Silead->load('firmware.fw');
 print unpack('H*', $req->get_page(0x00));

=head1 DESCRIPTION

=head2 Constructors

On error, all constructors set C<$@> to a description
of the error and return C<undef>.

=head3 C<new>

Creates a new firmware image without data.

=head3 C<load($io)>

Loads a firmware image from a file.
C<$io> may be a file handle or a file name.

=head3 C<unpack($string)>

Unpacks a firmware image from a byte string.

=head2 Import/Export

These methods allow importing firmware data from various formats.
Limited export is also available.

Note: Page order is not preserved when importing firmware.
Pages are always sorted sequentially.

=head3 C<import_scrambled($string)>

Import a firmware image from a scrambled TS_CFG.h byte string, as used in the form
of SileadTouch.fw by newer Windows drivers.

=head3 C<import_tscfg($string)>

Import a firmware image from a plain TS_CFG.h byte string, as used by older
Windows drivers.

=head3 C<import_fw($string)>

Import a firmware image in legacy format, as used by most other Linux and
Android drivers.

=head3 C<export_fw>

Export a firmware image into legacy format, as usable by most other Linux and
Android drivers. A binary string is returned.

=head2 Storage

=head3 C<save($io)>

Saves the firmware data to a file.
C<$io> may be a file handle or a file name.

=head3 C<pack>

Packs a firmware image into a byte string and returns it.

=head2 Accessors

=head3 C<model>
   C<set_model($model)>

Gets/sets the controller model ID.
The ID is a 4-character ASCII string identifying the
particular controller supported by this firmware.

Examples: 1680, 3682

=head3 C<width>
   C<set_width($width)>

Gets/sets the panel width.

=head3 C<height>
   C<set_height($height)>

Gets/sets the panel height.

=head3 C<touches>
   C<set_touches($num_touches)>

Gets/sets the number of supported touch points.

=head3 C<swapped>
   C<set_swapped($is_swapped)>

Gets/sets the axis swapping flag.
If true, the X and Y axes are swapped.

=head3 C<xmirrored>
   C<set_xmirrored($is_mirrored)>

Gets/sets the X axis mirroring flag.
If true, the X axis is inverted.

=head3 C<ymirrored>
   C<set_ymirrored($is_mirrored)>

Gets/sets the y axis mirroring flag.
If true, the Y axis is inverted.

=head3 C<tracking>
   C<set_tracking($need_tracking)>

Gets/sets the software tracking flag.
If true, hardware finger tracking is not available and
driver finger tracking will be used instead.

=head2 Page access

On error, all page accessors set C<$@> to a description
of the error. They return 1 on success, 0 on error.

=head3 C<get_pages>

Returns the list of defined pages (their page addresses, actually).

=head3 C<get_page($page_no)>

Returns the binary data for page number C<$page_no>.

=head3 C<set_page($page_no, $data)>

Stores the data of page number C<$page_no>. Automatically defines
the page if it did not exist previously.

=head3 C<delete_page($page_no)>

Removes page C<$page_no>.

=head1 FIRMWARE FORMAT

=head2 New-style firmware file format, version 1

 Offset   | Type    | Description
 -------------------------------------------------------------------
 0        | u8[4]   | ASCII 'GSLX' (magic)
 4        | u8[4]   | Touchscreen model (ASCII string)
 8        | u16le   | File format version (1)
 10       | u16le   | Number of supported touch events
 12       | u16le   | Panel width (0..4095)
 14       | u16le   | Panel height (0..4095)
 16       | u8      | 1 if X and Y axis are swapped, 0 otherwise
 17       | u8      | 1 if X axis is mirrored, 0 otherwise
 18       | u8      | 1 if Y axis is mirrored, 0 otherwise
 19       | u8      | 0 if finger tracking is supported by hardware,
          |         | 1 if the driver needs to provide it
 20       | u32le   | Number of memory pages that follow (N)
 24       | u16le   | Memory page 1: Page address
 26       | u16le   | Memory page 1: Effective size in bytes
 28       | u8[128] | Memory page 1: Data (must be 0 padded)
 ...
 24+N*132 | u16le   | Memory page N: Page address
 26+N*132 | u16le   | Memory page N: Effective size in bytes
 28+N*132 | u8[128] | Memory page N: Data (must be 0 padded)

=head1 AUTHOR

Gregor Riepl <onitake@gmail.com>

=cut

1;
