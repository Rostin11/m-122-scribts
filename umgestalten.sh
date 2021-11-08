#!/bin/bash
#
# Name: umgestalten.sh
# -----------------
# SYNOPSIS: umgestalten.sh [OPTION]
# Description: Es werden nur dich wichtigen Informationen angezeigt.
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 5.10.2021
#
# Aufrufen mit '. umgestalten.sh'

input=$1
output=$2

 awk '$1 ~ /^[0-2]$/ '  $input | \
 awk '$2 ~ /^[0-25]$/'             | \
 awk -F"'" '{print $2,"     ",$4}' | \
 awk 'length($1)==7' > $output