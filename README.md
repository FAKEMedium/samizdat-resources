# Samizdat-Resources

Vendored read-only third-party **runtime** data for [Samizdat](https://fakenews.com),
so installs are offline — no `make fetchall` (git clones) or npm at install time.

Ships under `lib/Samizdat/resources/shared/` (found by core's `sharedir` helper, which
scans `@INC` for `Samizdat/resources/shared`):

    countries-data-json/data   country list                 — MIT (countries/countries-data-json)
    i18n-iso-languages/langs   localized language names      — MIT (cospired/i18n-iso-languages)
    fonts/*.ttf,*.ttc          Noto fonts for the captcha    — SIL OFL (Google Noto)

The raw Bootstrap **icons** and **flag-icons** are NOT here — they're build-time only
(processed by `make icons`/webpack into the asset bundle the core dist ships).

## Install

    perl Makefile.PL && make && make test && make install
