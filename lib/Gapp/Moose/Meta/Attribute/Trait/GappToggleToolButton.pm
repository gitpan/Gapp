package Gapp::Moose::Meta::Attribute::Trait::GappToggleToolButton;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappToggleToolButton::VERSION = '0.483';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::ToggleToolButton' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappToggleToolButton;
{
  $Moose::Meta::Attribute::Custom::Trait::GappToggleToolButton::VERSION = '0.483';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappToggleToolButton' };
1;
