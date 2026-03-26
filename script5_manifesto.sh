#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Tanishq Mishra | Reg No: 24BAI10886
# Asks three questions and writes a personal OSS philosophy statement to a file

# alias demonstration (concept note — aliases are normally set in ~/.bashrc)
# alias today='date +%d-%B-%Y'

echo "======================================="
echo "  Open Source Manifesto Generator"
echo "======================================="
echo ""
echo "Answer three questions below."
echo ""

# Collect user input for personalizing the manifesto
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you in software? " FREEDOM
read -p "3. Name one thing you would build and share freely if you could: " BUILD

DATE=$(date '+%d %B %Y')
UNAME=$(whoami)
OUTPUT="manifesto_${UNAME}.txt"  # Output filename is unique per user

echo ""
echo "Generating your manifesto..."
echo ""

# Write the full manifesto to the output file using a heredoc-style block
{
echo "Open Source Manifesto"
echo "Generated on: $DATE"
echo "----------------------------------------------"
echo ""
echo "I use $TOOL every single day without paying for it, without asking for"
echo "permission, and without waiting for a company to decide what features I"
echo "should or should not have. That is not a small thing. To me, freedom in"
echo "software means $FREEDOM — the ability to look under the hood, change"
echo "what doesn't work, and share what you've learned."
echo ""
echo "If I had the skill and time, I would build $BUILD and put it out there"
echo "for anyone who needs it. Not because it would make me money, but because"
echo "that is how the tools I depend on were made — by people who gave something"
echo "without knowing exactly who would benefit from it."
echo ""
echo "Open source is not charity. It is a choice about what kind of world you"
echo "want to work in. I would rather work in one where knowledge is shared."
echo ""
echo "-- $UNAME, $DATE"
} > "$OUTPUT"

echo "Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
