#!/bin/bash

# Choose the number of captures and how many seconds between captures
# TO DO: add switches to make a proper utility of this
#        ...and Brett Terpstra's clever switch documentation trick

LOOPS=4
SLEEPSECS=5

echo "Beginning timed_screencapture. $LOOPS iterations,  every $SLEEPSECS seconds."
say "Beginning timed_screencapture. $LOOPS iterations,  every $SLEEPSECS seconds."

for numb in $(seq 1 $LOOPS); do
	DATETIME=$(date +"%Y-%m-%d-%H%M%S")
	FNAME="screenshot_$DATETIME.png"
	echo "$FNAME"
	screencapture -m $FNAME
	sleep "$SLEEPSECS"
done

echo "timed_screencapture is done"
say "timed_screencapture is done"
