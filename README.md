# DjangoCon Backups

The goal of this project is to archive past DjangoCon websites. 

Some of the websites are broken, and our only option of archiving them is to reconstruct a backup from the [Wayback Machine](https://archive.org/) :/ 

## Status

### Legend

| symbol        | description                                      |
| :------------ | :----------------------------------------------- |
| :warning:     | Needs verified or has link issues.               |
| :sos:         | An archive was not available.                    |
| :exclamation: | Needs a champion                                 |
| :thumbsup:    | We are serving the website from a static version |

The following websites were archived.

| year | country | backup status | hosted on github? | links                                                                                                                    | notes                           |
| :--: | :------ | :------------ | ----------------- | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------- |
| 2008 | US      | :sos:         | :thumbsup:        | [:globe_with_meridians:](https://2008.djangocon.us)      [:octocat:](https://github.com/djangocon/2008.djangocon.us)     | Original media can't be located |
| 2009 | US      | :sos:         | :thumbsup:        | [:globe_with_meridians:](https://2009.djangocon.us)      [:octocat:](https://github.com/djangocon/2009.djangocon.us)     |                                 |
| 2010 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2010.djangocon.eu)                                                                       |                                 |
| 2010 | US      | :sos:         | :thumbsup:        | [:globe_with_meridians:](https://2010.djangocon.us)      [:octocat:](https://github.com/djangocon/2010.djangocon.us)     |                                 |
| 2011 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2011.djangocon.eu)                                                                       |                                 |
| 2011 | US      | :warning:     | :thumbsup:        | [:globe_with_meridians:](https://2011.djangocon.us)      [:octocat:](https://github.com/djangocon/2011.djangocon.us)     |                                 |
| 2012 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2012.djangocon.eu)                                                                       |                                 |
| 2012 | US      | :warning:     | :thumbsdown:      | [:globe_with_meridians:](https://2012.djangocon.us)      [:octocat:](https://github.com/djangocon/2012.djangocon.us)     |                                 |
| 2013 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2013.djangocon.eu)       [:octocat:](https://github.com/djangocon/2013.djangocon.eu)     |                                 |
| 2013 | US      | :sos:         | :thumbsup:        | [:globe_with_meridians:](https://2013.djangocon.us)      [:octocat:](https://github.com/djangocon/2013.djangocon.us)     |                                 |
| 2014 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2014.djangocon.eu)                                                                       |                                 |
| 2014 | US      | :warning:     | :thumbsup:        | [:globe_with_meridians:](https://2014.djangocon.us)      [:octocat:](https://github.com/djangocon/2014.djangocon.us)     |                                 |
| 2015 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](http://2015.djangocon.eu)       [:octocat:](https://github.com/djangocon/2015.djangocon.eu)     |                                 |
| 2015 | US      | :warning:     | :thumbsup:        | [:globe_with_meridians:](https://2015.djangocon.us)      [:octocat:](https://github.com/djangocon/2015.djangocon.us)     |                                 |
| 2016 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](https://2016.djangocon.eu)      [:octocat:](https://github.com/djangocon/2016.djangocon.eu)     |                                 |
| 2016 | US      | :warning:     | :thumbsdown:      | [:globe_with_meridians:](https://2016.djangocon.us)      [:octocat:](https://github.com/djangocon/2016.djangocon.us)     |                                 |
| 2017 | AU      | :thumbsup:    |                   | [:globe_with_meridians:](https://2017.djangocon.com.au)  [:octocat:](https://github.com/djangocon/2017.djangocon.com.au) |                                 |
| 2017 | Europe  | :sos:         | :question:        | [:globe_with_meridians:](https://2017.djangocon.eu)      [:octocat:](https://github.com/djangocon/2017.djangocon.eu)     | Designed for Github Pages       |
| 2017 | US      | :thumbsup:    | :thumbsup:        | [:globe_with_meridians:](https://2017.djangocon.us)      [:octocat:](https://github.com/djangocon/2017.djangocon.us)     |                                 |

## General

Each website should exist in their repo which will be served with GitHub Pages which makes reviewing pull requests easy. Cloudflare is providing us with free SSL so we can use https. Neat!

The *.html files should live in a `_backup` folder in each repo.

We then flatten the pages into the `_pages` folder and run the through Jekyll. Each file uses frontmatter metadata to store the permalink, title, and TBD. 

## Other todos

- [ ] Add GA
- [ ] Add frontmatter / permalinks
- [ ] Adds custom 404 pages to point to this project
- [ ] Look for 404s
- [ ] Look for broken images

## How to run (Your mileage may vary)

**Please note:** This varies from website to website that we have never found a nice, standardized way to accomplish this.

The `Makefile` uses wget to spider each website into an offline copy. To run:

```shell
$ make 2013-eu
$ make 2012-us
```

For some years, the websites are no longer available, but we can still view them from the
[Wayback Machine](https://archive.org/).

The [wayback_machine_downloader](https://github.com/hartator/wayback-machine-downloader) can used to
download an entire website from the Internet Archive Wayback Machine.
