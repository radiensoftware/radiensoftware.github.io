#!/bin/sh
PAGES="index hr contact philosophy"
for page in $PAGES
do
	[ -f $page.html ] && mv -f $page.html $page.html-
	m4 $page.html.m4 > $page.html
	ls -l $page.html
done
cp -f index.html radien-index.html
