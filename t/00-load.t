use strict; use warnings; use Test::More;
use_ok('Samizdat::Resources');
use File::Spec;
my ($sh) = grep { -d } map { File::Spec->catdir($_, 'Samizdat','resources','shared') } @INC;
ok($sh, 'shared data dir is on @INC');
ok(-d File::Spec->catdir($sh,'fonts'), 'fonts ship');
ok(-d File::Spec->catdir($sh,'countries-data-json','data'), 'countries data ships');
ok(-d File::Spec->catdir($sh,'i18n-iso-languages','langs'), 'language data ships');
done_testing;
