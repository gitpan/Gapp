package Gapp::Container;

use Moose;
use MooseX::SemiAffordanceAccessor;

extends 'Gapp::Widget';

# the contents of the widget
has 'content' => (
    is => 'rw',
    isa => 'ArrayRef',
    default => sub { [ ] },
    traits => [qw( Array )],
    trigger => sub {
        my ( $self, $content ) = @_;
        map {
            confess 'cannot add undefined value to ' . $self if ! $_;
            $_->set_parent( $self );
        } @$content;
    },
    handles => {
        _add_content => 'push',
        children => 'elements',
    }
);

sub add {
    my ( $self, @args ) = @_;
    $_->set_parent( $self ) for @args;
    $self->_add_content( @args );
}

sub BUILD {
    my ( $self ) = @_;
        
    for my $child ( @{$self->content} ) {
        $child->set_parent( $self );
    }
}

after '_build_gtk_widget' => sub {
    my $self = shift;
    $self->find_layout->pack_widget( $_, $self) for @{$self->content};
};

# return a list of all descendants
sub find_descendants {
    my ( $self, $child ) = @_;
    
    my @descendants;
    
    for my $w ( @{ $self->content } ) {
        push @descendants, $w;
        push @descendants, $w->find_descendants if $w->can( 'find_descendants' );
    }
    
    return @descendants;
}


1;



__END__

=pod

=head1 NAME

Gapp::Container - Container Widget

=head1 OBJECT HIERARCHY

=over 4

=item L<Gapp::Widget>

=item +-- L<Gapp::Container>

=back

=head1 PROVIDED ATTRIBUTES

=over 4

=item B<content>

=over 4

=item isa ArrayRef

=back

=back

=head1 PROVIDED METHODS

=over 4

=item B<find_descendants>

Returns a list of all descendants of this container.

=back 

=head1 AUTHORS

Jeffrey Ray Hallock E<lt>jeffrey.hallock at gmail dot comE<gt>

=head1 COPYRIGHT & LICENSE

    Copyright (c) 2011 Jeffrey Ray Hallock.

    This program is free software; you can redistribute it and/or
    modify it under the same terms as Perl itself.

=cut
