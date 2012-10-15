package Gapp::Moose::Meta::Attribute::Trait::GappHBox;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappHBox::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::HBox' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappHBox;
{
  $Moose::Meta::Attribute::Custom::Trait::GappHBox::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappHBox' };
1;
