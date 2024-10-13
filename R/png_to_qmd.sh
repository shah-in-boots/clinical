#!/bin/bash

# Simple script to add all the images for a GIF based conference
# Uses the style of xaringan in RMD for the pattern for each slide set
# Presumes that the names are all sequential/organized to some degree
# Run first before adding a YAML to the QMD

for i in $(ls -1tr *.png); do
	echo "## {background-image=\"$i\" background-size=\"contain\"}"
	echo ""
done >> case.qmd

# Needs to be made executable with `chmod +x png-to-qmd.sh` from terminal
# Then, runs via `sh ../../R/png-to-qmd.sh` (e.g. absolute path needed)
