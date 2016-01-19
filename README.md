# DjangoCon Backups

The goal of this project is to archive past DjangoCon websites. Some of the websites are no longer around outside of the [Wayback Machine](https://archive.org/) :/


## Status

The following websites were archived.

| year | country | status |
| :---: | :--- | :--- |
| 2015 | Europe | :warning: |
| 2015 | US | :warning: |
| 2014 | Europe | :warning: |
| 2014 | US | :warning: |
| 2013 | Europe | :warning: |
| 2013 | US | :broken_heart: |
| 2012 | Europe | :broken_heart: |
| 2012 | US | :warning: |
| 2011 | Europe | :broken_heart: |
| 2011 | US | :warning: |
| 2010 | Europe | :broken_heart: |
| 2010 | US | :broken_heart: |
| 2009 | US | :broken_heart: |
| 2008 | US | :broken_heart: |

:warning: == Needs verified or has link issues.

:broken_heart: == An archive was not available.


## How to run

The `Makefile` uses wget to spider each website into an offline copy. To run:

    $ make 2013-eu
    $ make 2012-us

For some years, the websites are no longer available, but we can still view them from the [Wayback Machine](https://archive.org/).
