package Gapp::AssistantPage;
{
  $Gapp::AssistantPage::VERSION = '0.487';
}

use Moose;
use MooseX::LazyRequire;
use MooseX::SemiAffordanceAccessor;

extends 'Gapp::VBox';
with 'Gapp::Meta::Widget::Native::Trait::AssistantPage';


1;