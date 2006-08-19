use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Text::SwiftTemplate',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'lib/Text/SwiftTemplate.pm',
	requires            => {
	},
    build_requires => {
        'Test::More' => 0,
    },
#    add_to_cleanup      => [ 'Text-SwiftTemplate-*' ],
);

$builder->create_build_script();
# create the Makefile.PL
use Module::Build::Compat;
print "creating Makefile.PL\n";
Module::Build::Compat->create_makefile_pl('passthrough', $builder);
