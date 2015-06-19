#!/bin/sh
PAGES="index contact"
# radien-index hr 
for page in $PAGES
do
	[ -f $page.html ] && mv -f $page.html $page.html-
	m4 $page.html.m4 > $page.html
	ls -l $page.html
done
