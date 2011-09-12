use 5.010000;
use ExtUtils::MakeMaker;


# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
NAME => 'Gapp',
VERSION_FROM => 'lib/Gapp.pm',
PREREQ_PM => {
	'Moose' => 0,
	'MooseX::Method::Signatures' => 0,
	'MooseX::SemiAffordanceAccessor' => 0,
	'MooseX::StrictConstructor' => 0,
	'MooseX::Types' => 0,
},
(5.010000 >= 5.005 ?     ## Add these new keywords supported since 5.005
   (ABSTRACT_FROM  => 'lib/Gapp.pm', # retrieve abstract from module
    AUTHOR         => 'Jeffrey Ray Hallock <jeffrey dot hallock at gmail dot com>') : ()),
);