@_default:
    just --list

@bootstrap:
    just update
    shot-scraper install

@fmt:
    just --fmt --unstable

@rebuild:
    cog -rP README.md

@screenshots *ARGS:
    shot-scraper multi --no-clobber {{ ARGS }} ./shots.yml

@screenshots-retina *ARGS:
    just screenshots --retina {{ ARGS }}

@update:
    pip install -U pip
    pip install -U cogapp shot-scraper pyyaml
