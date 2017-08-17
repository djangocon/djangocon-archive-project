# DjangoCon Backups

The goal of this project is to archive past DjangoCon websites. Some of the websites are no longer
around outside of the [Wayback Machine](https://archive.org/) :/

## Status

### Legend

:warning: == Needs verified or has link issues.<br>
:sos: == An archive was not available.<br>
:exclamation: == Needs a champion

The following websites were archived.

| year | country | backup status | graphical assets | done(ish) | repo                                                             |
| :--: | :------ | :-----------: | ---------------- | --------- | :--------------------------------------------------------------: |
| 2016 | Europe  |   :warning:   |                  |           |                                                                  |
| 2016 | US      |   :warning:   |                  |           | [:construction:](https://github.com/djangocon/2016.djangocon.us) |
| 2015 | Europe  |   :warning:   |                  |           |                                                                  |
| 2015 | US      |   :warning:   |                  |           | [:construction:](https://github.com/djangocon/2015.djangocon.us) |
| 2014 | Europe  |   :warning:   |                  |           |                                                                  |
| 2014 | US      |   :warning:   |                  |           | [:construction:](https://github.com/djangocon/2014.djangocon.us) |
| 2013 | Europe  |   :warning:   |                  |           |                                                                  |
| 2013 | US      |     :sos:     |                  |           | [:construction:](https://github.com/djangocon/2013.djangocon.us) |
| 2012 | Europe  |     :sos:     |                  |           |                                                                  |
| 2012 | US      |   :warning:   |                  |           | [:construction:](https://github.com/djangocon/2012.djangocon.us) |
| 2011 | Europe  |   :warning:   |                  |           |                                                                  |
| 2011 | US      |   :warning:   |                  |           | [:construction:](https://github.com/djangocon/2011.djangocon.us) |
| 2010 | Europe  |     :sos:     |                  |           |                                                                  |
| 2010 | US      |     :sos:     |                  |           | [:construction:](https://github.com/djangocon/2010.djangocon.us) |
| 2009 | US      |     :sos:     |                  |           | [:construction:](https://github.com/djangocon/2009.djangocon.us) |
| 2008 | US      |     :sos:     |                  |           | [:construction:](https://github.com/djangocon/2008.djangocon.us) |

## How to run

The `Makefile` uses wget to spider each website into an offline copy. To run:

```shell
$ make 2013-eu
$ make 2012-us
```

For some years, the websites are no longer available, but we can still view them from the
[Wayback Machine](https://archive.org/).

The [wayback_machine_downloader](https://github.com/hartator/wayback-machine-downloader) can used to
download an entire website from the Internet Archive Wayback Machine.
