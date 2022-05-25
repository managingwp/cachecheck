#!/bin/env bash
URL=$1

usage () { 
	echo "Usage: sitecachecheck.sh <URL>"
}

cache_check () {
	echo "-- Checking $URL cache headers"
	curl --head $URL
}

if [[ -v $1 ]]; then
	usage
elif [[ $1 ]]; then
	cache_check $URL
fi
