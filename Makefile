.PHONY: all

IMAGE_SIZE = 1280x1024
YEARS := 2019 2018 2017 2016 2015 2014 2013 2012 2011 2010 2009 2008

WGET_OPTIONS = --convert-links \
		--html-extension \
		--no-check-certificate \
		--no-parent \
		--page-requisites \
		--recursive \
		--user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36" \
		-w 10 \
		--restrict-file-names=windows

.PHONY: screenshots
screenshots:
	@echo "check out... https://github.com/sindresorhus/pageres-cli"

	@for year in $(YEARS) ; do \
		pageres https://$$year.djangocon.us $(IMAGE_SIZE) \
			--crop \
			--overwrite \
			--filename=screenshots/$$year-djangocon-us ; \
	done

.PHONY: help
help:
	@ #grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-24s\033[0m %s\n", $$1, $$2}'
	@echo "2010-us - To backup DjangoCon US 2010"
	@echo "2011-eu - To backup DjangoCon EU 2011"
	@echo "2011-us - To backup DjangoCon US 2011"
	@echo "2012-eu - To backup DjangoCon EU 2012"
	@echo "2012-us - To backup DjangoCon US 2012"
	@echo "2013-eu - To backup DjangoCon EU 2013"
	@echo "2013-us - To backup DjangoCon US 2013"
	@echo "2014-eu - To backup DjangoCon EU 2014"
	@echo "2014-us - To backup DjangoCon US 2014"
	@echo "2015-eu - To backup DjangoCon EU 2015"
	@echo "2015-us - To backup DjangoCon US 2015"
	@echo "2016-eu - To backup DjangoCon EU 2016"
	@echo "2016-us - To backup DjangoCon US 2016"


.PHONY: 2016-eu
2016-eu:
	wget \
		$(WGET_OPTIONS) \
		--domains 2016.djangocon.eu \
		https://2016.djangocon.eu

.PHONY: 2016-us
2016-us:
	wget \
		$(WGET_OPTIONS) \
		--domains 2016.djangocon.us,djangocon-us.global.ssl.fastly.net \
	    https://2016.djangocon.us

.PHONY: 2015-eu
2015-eu:
	wget \
		$(WGET_OPTIONS) \
		--domains 2015.djangocon.eu \
		https://2015.djangocon.eu

.PHONY: 2015-us
2015-us:
	wget \
		$(WGET_OPTIONS) \
		--domains 2015.djangocon.us,djangocon-us.global.ssl.fastly.net \
	    https://2015.djangocon.us

.PHONY: 2014-eu
2014-eu:
	wget \
		$(WGET_OPTIONS) \
		--domains 2014.djangocon.eu,djangocon-us.global.ssl.fastly.net \
		http://2014.djangocon.eu/

.PHONY: 2014-us
2014-us:
	wget \
		$(WGET_OPTIONS) \
		--domains 2014.djangocon.us,djangocon-us.global.ssl.fastly.net \
		https://2014.djangocon.us/

.PHONY: 2013-eu
2013-eu:
	wget \
		$(WGET_OPTIONS) \
		--domains 2013.djangocon.eu \
		http://2013.djangocon.eu/

.PHONY: 2013-us
2013-us:
	wayback_machine_downloader \
		http://www.djangocon.us/ \
		--to 20131213092822 \
        --directory 2013.djangocon.us

.PHONY: 2012-eu
2012-eu:
	@echo "The 2012 EU website is broken :/ "

.PHONY: 2012-us
2012-us:
	wget \
		$(WGET_OPTIONS) \
		--domains 2012.djangocon.us \
		http://2012.djangocon.us/

.PHONY: 2011-eu
2011-eu:
	wget \
		$(WGET_OPTIONS) \
		--domains 2011.djangocon.eu \
		http://2011.djangocon.eu/

.PHONY: 2011-us
2011-us:
	wget \
		$(WGET_OPTIONS) \
		--domains 2011.djangocon.us \
		http://2011.djangocon.us/

.PHONY: 2010-us
2010-us:
	@echo "The 2010 US website is broken :/ "

	wayback_machine_downloader \
		http://www.djangocon.us/ \
		--timestamp 20101213193332
