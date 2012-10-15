package Gapp::Moose::Meta::Attribute::Trait::SeparatorToolItem;
{
  $Gapp::Moose::Meta::Attribute::Trait::SeparatorToolItem::VERSION = '0.487';
}
use Moose::Role;

before '_process_options' => sub {
    my ( $class, $name, $opts ) = @_;
    $opts->{gclass} = 'Gapp::SeparatorToolItem' if ! exists $opts->{class};
};

package Moose::Meta::Attribute::Custom::Trait::GappSeparatorToolItem;
{
  $Moose::Meta::Attribute::Custom::Trait::GappSeparatorToolItem::VERSION = '0.487';
}
sub register_implementation { 'Gapp::Moose::Meta::Attribute::Trait::GappSeparatorToolItem' };
1;
