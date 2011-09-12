#!/usr/bin/perl -w
use strict;
use warnings;

use Test::More qw( no_plan );

use Gtk2 '-init';
use_ok 'Gapp::Label';

my $w = Gapp::Label->new( text => 'Label' );
ok $w, 'created gapp widget';
ok $w->gtk_widget, 'created gtk widget';