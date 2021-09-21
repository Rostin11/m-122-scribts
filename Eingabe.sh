#!/bin/bash
#Variante 1: Mit "echo" und "read"
echo "Bitte, eine Zahl eingeben:"
read Antwortecho $Antwort
# Variante 2: Nur mit "read" mit der option -p (prompt)
read -p "Erste Zahl eingeben: " zahl1
read -p "Zweite Zahl eingeben: " zahl2
echo $((zahl1 * zahl2))