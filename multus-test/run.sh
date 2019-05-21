#!/bin/bash

echo "Basic tests"
#./scripts/basic.sh

/multus-test/scripts/basic.sh
if [ "$?" -eq 1 ]; then
	echo "FAILED" >> /dev/termination-log
	exit 1
else
	echo "SUCCEED" >> /dev/termination-log
	exit 0
fi

#sleep infinity
