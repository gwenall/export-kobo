#!/bin/bash
for i j in $(python export-kobo.py KoboReader.sqlite --list |awk -F"\t"  '/^[^I]/{gsub(" ","_",$2); print $1 " " $2} ');do python export-kobo.py KoboReader.sqlite --bookid $i --csv > $HOME/eBooks/Annotations/$j.csv ; done

