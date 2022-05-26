#!/bin/env bash
URL=$1

usage () { 
	echo "Usage: sitecachecheck.sh <URL>"
}

cache_check () {
	echo "-- Checking $URL cache headers"
	CURL_OUTPUT=$(curl -s --head $URL)
	echo $CURL_OUTPUT
	
}

if [[ -z $URL ]]; then
	usage
elif [[ $URL ]]; then
	cache_check $URL
fi
