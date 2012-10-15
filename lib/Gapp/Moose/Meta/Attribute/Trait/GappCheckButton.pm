package Gapp::Moose::Meta::Attribute::Trait::GappCheckButton;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappCheckButton::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::CheckButton' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappCheckButton;
{
  $Moose::Meta::Attribute::Custom::Trait::GappCheckButton::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappCheckButton' };
1;
