#!/bin/bash
# This script installs the corresponding Web page and sources on
# my Web server. No interest to anybody except me.

WEBSOURCE=/home/kevin/docs/kzone5/source
WEBTARGET=/home/kevin/docs/kzone5/target
./clean.sh
(cd ..; zip -r $WEBTARGET/londonweather.zip londonweather/)
cp *.html $WEBSOURCE
(cd $WEBSOURCE/..; ./make.pl londonweather)


