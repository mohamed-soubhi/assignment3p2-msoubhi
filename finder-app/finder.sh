#!/bin/sh

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]
then
    echo "Error: filesdir and searchstr must be specified"
    exit 1
fi

if [ ! -d "$filesdir" ]
then
    echo "Error: filesdir does not exist"
    exit 1
fi

X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
