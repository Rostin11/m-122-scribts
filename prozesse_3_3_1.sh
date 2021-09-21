#!/bin/bash
#
# Name: prozesse_3_3_1.sh - Überprüft, ob ein genennter Prozess läuft.
# -----------------
# SYNOPSIS: prozesse_3_3_1.sh [OPTION]
# Description: Überprüft, ob ein genennter Prozess läuft.
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 14.9.2021
#
#

clear
echo "------------------------------------------------"
echo ""
echo "Bitte geben Sie den Prozess ein den Sie suchen!"
echo "------------------------------------------------"
read input
if [ $(ps -ef | grep ${input} | grep -v grep | wc -l) -eq 0 ]; then
  echo ""
  echo "This process isn't running"
else
  echo "This process is running"
fi


