#!/bin/bash

echo 'copying images...'
cp -r `dirname $0`/../alttprandohelper/*/images public
echo 'copying images...'
cp -r `dirname $0`/../alttprandohelper/*/js public
echo 'copying html...'
cp `dirname $0`/../alttprandohelper/*/*.html public
echo 'copying styles...'
cp `dirname $0`/../alttprandohelper/*/style.css public
