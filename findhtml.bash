#!/bin/bash
for i in $(find . -name "*.json"); do echo "$i" ; grep '<[/]*div[^>]*>' "$i" ; done
for i in $(find . -name "*.json"); do echo "$i" ; grep '&nbsp;' "$i" ; done

# cure nbsp
# for i in $(find . -name "*.json"); do echo "$i" ; sed -i 's/&nbsp;/ /g' "$i" ; done
