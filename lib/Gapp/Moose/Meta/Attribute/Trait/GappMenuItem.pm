package Gapp::Moose::Meta::Attribute::Trait::MenuItem;
{
  $Gapp::Moose::Meta::Attribute::Trait::MenuItem::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::MenuItem' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappMenuItem;
{
  $Moose::Meta::Attribute::Custom::Trait::GappMenuItem::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappMenuItem' };
1;
