package Gapp::Moose::Meta::Attribute::Trait::GappHPaned;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappHPaned::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::HPaned' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappHPaned;
{
  $Moose::Meta::Attribute::Custom::Trait::GappHPaned::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappHPaned' };
1;
