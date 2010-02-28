
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::Signature',
                       'DISTNAME' => 'Dist-Zilla-Plugin-Signature',
                       'AUTHOR' => 'Graham Barr',
                       'ABSTRACT' => 'sign releases with Module::Signature',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100590',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Module::Signature' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Dist::Zilla' => '9999',
                                        'File::chdir' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



