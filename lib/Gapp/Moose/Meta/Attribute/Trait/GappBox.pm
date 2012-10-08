package Gapp::Moose::Meta::Attribute::Trait::GappBox;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappBox::VERSION = '0.484';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::Box' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappBox;
{
  $Moose::Meta::Attribute::Custom::Trait::GappBox::VERSION = '0.484';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappBox' };
1;
