#!/bin/bash

if [ $# -eq 1 ]; then
	case "$1" in
		"multus-basic")
			echo "Basic tests"
			/multus-test/scripts/basic.sh
			;;
		"multus-basic-openshift")
			echo "Basic tests on OpenShift"
			/multus-test/scripts/basic-openshift.sh
			;;
	esac
fi

if [ "$?" -eq 1 ]; then
	echo "FAILED" >> /dev/termination-log
	exit 1
else
	echo "SUCCEED" >> /dev/termination-log
	exit 0
fi

#sleep infinity
