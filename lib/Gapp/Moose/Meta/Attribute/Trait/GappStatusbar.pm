package Gapp::Moose::Meta::Attribute::Trait::GappStatusbar;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappStatusbar::VERSION = '0.494';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::Statusbar' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappStatusbar;
{
  $Moose::Meta::Attribute::Custom::Trait::GappStatusbar::VERSION = '0.494';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappStatusbar' };
1;
