#!/bin/bash
#
# Name: du_sort_3_2_1.sh - Ausgabe der Groesse aller Verzeichnissen und Dateien.
# -----------------
# SYNOPSIS: du_sort_3_2_1.sh [OPTION]
# Description: Ausgabe der Groesse aller Verzeichnissen und Dateien.
#
# Autoren: R. Stalder
# Version: 1.0.0
# Datum: 14.9.2021
#
#
echo Ausgabe der Groesse aller Verzeichnissen und Dateien.
du
test=$(du -ch .)
echo Gesamterspeicher: $test

