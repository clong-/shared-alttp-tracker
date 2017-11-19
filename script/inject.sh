#!/bin/bash

projectpath=`dirname $0`/..

# copy script file into project
cp $projectpath/app/override.js $projectpath/public/

# inject script tag into header
trackerfile=$projectpath/public/tracker.html
cat $trackerfile \
    | sed -e $'s/<\/head>/  <script src="js\/override.js"><\/script>\\\n<\/head>/g' \
    | tee $trackerfile \
    > /dev/null
