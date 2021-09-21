#!/bin/bash

du -ah | sort
speicherbedarf=$(du -ah)
echo "Der totale Speicherbedarf betraegt: $speicherbedarf"
