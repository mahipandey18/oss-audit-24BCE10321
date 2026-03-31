#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Mahi

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose paragraph
echo "Open Source Manifesto - Generated on $DATE" > $OUTPUT
echo "---------------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day I use $TOOL to empower my work. To me, freedom means $FREEDOM. Inspired by the open-source philosophy, I would build and share $BUILD freely with the community, contributing to a world where knowledge and tools are shared transparently." >> $OUTPUT
echo "" >> $OUTPUT
echo "---------------------------------------------" >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
