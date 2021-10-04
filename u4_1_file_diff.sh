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
korrekteFiles=0
if test $# -ne 2; then
  echo "Sie mussen zwei Dateinamen als Argumente eingeben!"
  echo "Usage: u4_1_file_diff.sh dateiname1 dateiname2"
else

  if ! test -e $1; then
    echo "Die Datei \"$1\" existiert nicht"
  elif ! [[ -f $1 ]]; then
    echo "Die Datei \"$1\" ist kein File"
  elif ! [[ $(wc -l <"$1") -gt 0 ]]; then
    echo "Die Datei \"$1\" ist leer"
  else
    ((korrekteFiles = korrekteFiles + 1))
  fi

  if ! test -e $2; then
    echo "Die Datei \"$2\" existiert nicht"
  elif ! [[ -f $2 ]]; then
    echo "Die Datei \"$2\" ist kein File"
  elif ! [[ $(wc -l <"$2") -gt 0 ]]; then
    echo "Die Datei \"$2\" ist leer"
  else
    ((korrekteFiles = korrekteFiles + 1))
  fi

  if [[ $korrekteFiles == "2" ]]; then
    echo "Ungleiche Zeilen:"
    if [[ $(wc -l <"$1") -gt $(wc -l <"$2") ]]; then
      fileWithMoreLines=$1
      fileWithLessLines=$2
    else
      fileWithMoreLines=$2
      fileWithLessLines=$1
    fi

    amountRowsBiggerFile=$(($(wc -l <"$fileWithMoreLines")))
    amountRowsBiggerFile=$amountRowsBiggerFile+1
    anzahlUngleicheZeilen=0

    i=1
    while [[ $i -le $amountRowsBiggerFile ]]; do
      currentRowFileWithMoreLines=$(sed -n ${i}p "$fileWithMoreLines")
      currentRowFileWithLessLines=$(sed -n ${i}p "$fileWithLessLines")

      if [[ "$currentRowFileWithMoreLines" != "$currentRowFileWithLessLines" ]]; then
        ((anzahlUngleicheZeilen = $anzahlUngleicheZeilen + 1))
        echo "$i: $currentRowFileWithMoreLines"
        echo "$i: $currentRowFileWithLessLines"
      fi
      ((i = i + 1))
    done
    echo "$anzahlUngleicheZeilen Zeilen waren unterschiedlich!"
  fi
fi
