package Gapp::Moose::Meta::Attribute::Trait::GappToolbar;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappToolbar::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::Toolbar' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappToolbar;
{
  $Moose::Meta::Attribute::Custom::Trait::GappToolbar::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappToolbar' };
1;
