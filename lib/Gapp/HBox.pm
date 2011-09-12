package Gapp::HBox;

use Moose;
extends 'Gapp::Box';

has '+class' => (
    default => 'Gtk2::HBox',
);

1;

__END__

=pod

=head1 NAME

Gapp::HBox - HBox Widget

=head1 OBJECT HIERARCHY

=over 4

=item L<Gapp::Widget>

=item +-- L<Gapp::Container>

=item ....+-- L<Gapp::Box>

=item ........+-- L<Gapp::HBox>

=back

=head1 AUTHORS

Jeffrey Ray Hallock E<lt>jeffrey.hallock at gmail dot comE<gt>

=head1 COPYRIGHT & LICENSE

    Copyright (c) 2011 Jeffrey Ray Hallock.

    This program is free software; you can redistribute it and/or
    modify it under the same terms as Perl itself.

=cut
