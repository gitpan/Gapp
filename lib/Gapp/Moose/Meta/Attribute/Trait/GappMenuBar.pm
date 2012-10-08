package Gapp::Moose::Meta::Attribute::Trait::GappMenuBar;
{
  $Gapp::Moose::Meta::Attribute::Trait::GappMenuBar::VERSION = '0.484';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::MenuBar' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappMenuBar;
{
  $Moose::Meta::Attribute::Custom::Trait::GappMenuBar::VERSION = '0.484';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappMenuBar' };
1;
