package Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem;
{
  $Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem::VERSION = '0.482';
}
{
  $Gapp::Moose::Meta::Attribute::Trait::TearoffMenuItem::VERSION = '0.482';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::TearoffMenuItem' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem;
{
  $Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem::VERSION = '0.482';
}
{
  $Moose::Meta::Attribute::Custom::Trait::GappTearoffMenuItem::VERSION = '0.482';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappTearoffMenuItem' };
1;