package Gapp::Moose::Meta::Attribute::Trait::GappButton;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappButton::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::Button' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappButton;
{
  $Moose::Meta::Attribute::Custom::Trait::GappButton::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappButton' };
1;
