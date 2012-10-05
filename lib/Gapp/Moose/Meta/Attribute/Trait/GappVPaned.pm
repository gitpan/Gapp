package Gapp::Moose::Meta::Attribute::Trait::GappVPaned;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappVPaned::VERSION = '0.481';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::VPaned' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappVPaned;
{
  $Moose::Meta::Attribute::Custom::Trait::GappVPaned::VERSION = '0.481';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappVPaned' };
1;
