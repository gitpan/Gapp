package Gapp::Moose::Meta::Attribute::Trait::GappVButtonBox;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappVButtonBox::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::VButtonBox' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappVButtonBox;
{
  $Moose::Meta::Attribute::Custom::Trait::GappVButtonBox::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappVButtonBox' };
1;
