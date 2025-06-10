#!/bin/bash

Website=${1:-google.com}

if ping -c 1 $Website > /dev/null; then
	echo "Sucess: $Website is reachable"
else
	echo "Failure: $Website is not reachable"
fi

