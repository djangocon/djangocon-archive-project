@_default:
    just --list

@bootstrap:
    just update
    playwright install

@fmt:
    just --fmt --unstable

@rebuild:
    cog -rP README.md
    cog -rP shots.yml

@screenshots *ARGS:
    shot-scraper multi --no-clobber {{ ARGS }} ./shots.yml

@screenshots-retina *ARGS:
    just screenshots --retina {{ ARGS }}

@update:
    pip install -U pip
    pip install -U cogapp playwright shot-scraper
