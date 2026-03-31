#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Mahi

PACKAGE="git"   # change this if you chose another software

# Check if package is installed
if dpkg -l | grep -w $PACKAGE > /dev/null 2>&1; then
    echo "$PACKAGE is installed."
    dpkg -l | grep -w $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    git)
        echo "Git: a distributed version control system built for collaboration"
        ;;
    vlc)
        echo "VLC: an open-source media player that plays almost any format"
        ;;
    firefox)
        echo "Firefox: a web browser focused on privacy and open web standards"
        ;;
    mysql)
        echo "MySQL: an open-source database powering many web applications"
        ;;
    apache2)
        echo "Apache: a widely used open-source web server"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
