#!/bin/bash

iseven () {
	if [ $(($1 % 2)) -eq 0 ]; then
		echo "$1 is even."
	else
		echo "$1 is odd."
	fi
}

iseven 3
iseven 4
iseven 20
iseven 111
