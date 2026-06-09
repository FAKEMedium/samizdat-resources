package Samizdat::Resources;
use strict;
use warnings;
our $VERSION = '0.01';

# Marker module for the Samizdat-Resources distribution. This dist ships no code —
# it vendors the read-only third-party reference data Samizdat reads at runtime via
# the `sharedir` helper, under lib/Samizdat/resources/shared/:
#   countries-data-json/data   (Public: country list)        — MIT
#   i18n-iso-languages/langs   (makeinstalldata: language names) — MIT
#   fonts/*.ttf,*.ttc          (Captcha: locale-aware glyphs)  — OFL (Noto)
# so installs are offline (no `make fetchall`/git/npm at install time). The raw
# bootstrap icons / flag-icons stay build-time (their processed bundle ships in core).
1;
