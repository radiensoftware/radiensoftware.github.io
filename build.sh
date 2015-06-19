#!/bin/sh
PAGES=index 
# radien-index hr contact
for page in $PAGES
do
	mv -f $page.html $page.html-
	m4 $page.html.m4 > $page.html
	ls -l $page.html
done
