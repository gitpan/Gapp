package Gapp::Moose::Meta::Attribute::Trait::GappHButtonBox;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappHButtonBox::VERSION = '0.483';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::HButtonBox' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappHButtonBox;
{
  $Moose::Meta::Attribute::Custom::Trait::GappHButtonBox::VERSION = '0.483';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappHButtonBox' };
1;
