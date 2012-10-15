package Gapp::Moose::Meta::Attribute::Trait::GappNotebook;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappNotebook::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::Notebook' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappNotebook;
{
  $Moose::Meta::Attribute::Custom::Trait::GappNotebook::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappNotebook' };
1;
