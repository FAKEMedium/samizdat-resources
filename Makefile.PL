use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::Find;
# Ship the marker module AND the vendored data tree under lib/.
my %pm;
find(sub {
  return unless -f; return if /\.(bak|orig|rej|swp)$/;
  my $path = $File::Find::name; (my $rel = $path) =~ s{^lib/}{};
  $pm{$path} = "\$(INST_LIB)/$rel";
}, 'lib');
WriteMakefile(
  NAME             => 'Samizdat::Resources',
  VERSION_FROM     => 'lib/Samizdat/Resources.pm',
  ABSTRACT         => 'Vendored third-party runtime data for Samizdat (offline installs)',
  AUTHOR           => 'Hans Svensson <hans@alipang.se>',
  LICENSE          => 'artistic_2',
  MIN_PERL_VERSION => '5.036',
  PM               => \%pm,
  TEST_REQUIRES    => { 'Test::More' => 0 },
  META_MERGE       => {
    'meta-spec' => { version => 2 },
    no_index    => { directory => ['lib/Samizdat/resources'] },
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
  clean => { FILES => 'Samizdat-Resources-*' },
);
