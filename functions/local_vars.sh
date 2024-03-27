#!/bin/bash

v1='A'
v2='B'

myfun() {
	local v1='C'
	v2='D'
	echo "Inside myfun(): v1: $v1, v2: $v2"
}

echo "Before calling myfun(): v1: $v1, v2: $v2"
myfun
echo "After calling myfun(): v1: $v1, v2: $v2"
