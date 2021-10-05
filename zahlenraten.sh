#!/bin/bash
#
# Name: zahlenraten.sh - Finde die Zahl.
# -----------------
# SYNOPSIS: zahlenraten.sh [OPTION]
# Description: Finde die Zahl.
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 5.10.2021
#
# Aufrufen mit '. zahlenraten.sh'
clear
((numberFound = 0))
((randomNumber = $(($RANDOM % 20))))
((highNumber = 20))
((lowNumber = 1))
((anzahlVersuche = 0))
until [[ $numberFound == 1 ]]; do
  ((anzahlVersuche = anzahlVersuche + 1))
  echo "Bitte geben Sie eine Zahl zwischen $lowNumber und $highNumber ein:"
  read eingabe
  if [ $eingabe == $randomNumber ]; then
    clear
    echo "Du hast die Richtige Nummer gefunden. Sie war $randomNumber."
    echo "Du brauchtest $anzahlVersuche Versuche."
    ((numberFound = 1))
  elif [ $eingabe -gt $randomNumber ]; then
    clear
    echo "Die gesuchte Nummer ist kleiner als $eingabe."
    if [ $eingabe -lt $highNumber ]; then
      ((highNumber = $eingabe))
    fi
  elif [ $eingabe -lt $randomNumber ]; then
    clear
    echo "Die gesuchte Nummer ist groesser als $eingabe."
    if [ $eingabe -gt $lowNumber ]; then
      ((lowNumber = $eingabe))
    fi
  fi
done
