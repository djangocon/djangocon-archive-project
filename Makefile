.PHONY:
	2015-us 2014-us 2013-us 2012-us 2011-us 2010-us 2009-us 2008-us
	2015-eu 2014-eu 2013-eu 2012-eu 2011-eu 2010-eu

help:
	@echo "2015-eu - To backup DjangoCon EU 2015."
	@echo "2015-us - To backup DjangoCon US 2015."
	@echo "2014-eu - To backup DjangoCon EU 2014."
	@echo "2014-us - To backup DjangoCon US 2014."
	@echo "2013-eu - To backup DjangoCon EU 2013."
	@echo "2013-us - To backup DjangoCon US 2013."
	@echo "2012-eu - To backup DjangoCon EU 2012."
	@echo "2012-us - To backup DjangoCon US 2012."
	@echo "2011-eu - To backup DjangoCon EU 2011."
	@echo "2011-us - To backup DjangoCon US 2011."
	@echo "2010-us - To backup DjangoCon US 2010."
	@echo "2009-us - To backup DjangoCon US 2009."
	@echo "2008-us - To backup DjangoCon US 2008."


2015-eu:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2015.djangocon.eu \
		https://2015.djangocon.eu

2015-us:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2015.djangocon.us,djangocon-us.global.ssl.fastly.net \
	    https://2015.djangocon.us

2014-eu:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2014.djangocon.eu \
		http://2014.djangocon.eu/

2014-us:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2014.djangocon.us \
		https://2014.djangocon.us/

2013-eu:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2013.djangocon.eu \
		http://2013.djangocon.eu/

2013-us:
	wayback_machine_downloader \
		http://www.djangocon.us/ \
		--timestamp 20131213092822

2012-eu:
	@echo "The 2012 EU website is broken :/ "

2012-us:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2012.djangocon.us \
		http://2012.djangocon.us/

2011-eu:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2011.djangocon.eu \
		http://2011.djangocon.eu/

2011-us:
	wget \
		--convert-links \
		--html-extension \
		--no-check-certificate \
		--no-clobber \
		--no-parent \
		--page-requisites \
		--recursive \
		--restrict-file-names=windows \
		--domains 2011.djangocon.us \
		http://2011.djangocon.us/

2010-us:
	@echo "The 2010 US website is broken :/ "

	wayback_machine_downloader \
		http://www.djangocon.us/ \
		--timestamp 20101213193332

2009-us:
		@echo "The 2009 US website is broken :/ "

2008-us:
		@echo "The 2008 US website is broken :/ "
