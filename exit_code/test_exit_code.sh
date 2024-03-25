#!/bin/bash

# Experimentacion con los codigos de estado

ls -l > /dev/null
echo "El codigo de estado del comando ls fue: $?"

lzl 2> /dev/null
echo "El codigo de estado del comando lzl fue: $?"
