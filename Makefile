.PHONY:
	2015-us 2014-us 2013-us 2012-us 2011-us 2010-us 2009-us 2008-us
	2015-eu 2014-eu 2013-eu 2012-eu 2011-eu 2010-eu

2015-eu:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2015.djangocon.eu \
     --no-parent \
     https://2015.djangocon.eu

2015-us:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2015.djangocon.us,djangocon-us.global.ssl.fastly.net \
     --no-parent \
    https://2015.djangocon.us

2014-eu:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2014.djangocon.eu \
     --no-parent \
    http://2014.djangocon.eu/

2014-us:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2014.djangocon.us \
     --no-parent \
    https://2014.djangocon.us/

2013-eu:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2013.djangocon.eu \
     --no-parent \
    http://2013.djangocon.eu/

2013-us:
	@echo "The 2013 US website is broken :/ "

2012-eu:
	@echo "The 2012 EU website is broken :/ "

2012-us:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2012.djangocon.us \
     --no-parent \
    http://2012.djangocon.us/

2011-eu:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2011.djangocon.eu \
     --no-parent \
    http://2011.djangocon.eu/

2011-us:
	wget \
     --recursive \
     --no-clobber \
     --no-check-certificate \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains 2011.djangocon.us \
     --no-parent \
    http://2011.djangocon.us/

2010-us:
		@echo "The 2010 US website is broken :/ "

2009-us:
		@echo "The 2009 US website is broken :/ "

2008-us:
		@echo "The 2008 US website is broken :/ "