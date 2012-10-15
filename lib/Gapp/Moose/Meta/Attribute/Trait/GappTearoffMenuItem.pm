package Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem;
{
  $Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem::VERSION = '0.487';
}
{
  $Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::TearoffMenuItem' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem;
{
  $Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem::VERSION = '0.487';
}
{
  $Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappTearoffMenuItem' };
1;
