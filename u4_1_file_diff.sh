#!/bin/bash
#
# Name: u4_1_file_diff.sh - Überprüft, ob genug Argumente mitgegeben wurde.
# -----------------
# SYNOPSIS: u4_1_file_diff.sh [OPTION]
# Description: Überprüft, ob genug Argumente mitgegeben wurde.
# u4_1_file_diff  -> Erste Datei
# u4_1_file_diff -> Zweite Datei
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 14.9.2021
#
# Aufrufen mit '. u4_1_file_diff.sh'

if test $# -ne 2; then
  echo "Sie mussen zwei Dateinamen als Argumente eingeben!"
  echo "Usage: u4_1_file_diff.sh dateiname1 dateiname2"
else
  if test -e $1; then
    echo "Die Datei existiert"
  else
    echo "Die Datei \"$1\" existiert nicht"
    #exit 1
  fi
  if test -e $2; then
    echo "Die Datei existiert"
  else
    echo "Die Datei \"$2\" existiert nicht"
    #exit 1
  fi
fi
