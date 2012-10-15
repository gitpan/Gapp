package Gapp::Moose::Meta::Attribute::Trait::GappStatusIcon;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappStatusIcon::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::StatusIcon' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappStatusIcon;
{
  $Moose::Meta::Attribute::Custom::Trait::GappStatusIcon::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappStatusIcon' };
1;
