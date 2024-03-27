#!/bin/bash

CHAR=$1

case $CHAR in
	[a-z])
		echo "Small Alphabet" ;;
	[A-Z])
		echo "Big Alphabet" ;;
	[0-9])
		echo "Number" ;;
	*) # Default case
		echo "Special character"
esac
