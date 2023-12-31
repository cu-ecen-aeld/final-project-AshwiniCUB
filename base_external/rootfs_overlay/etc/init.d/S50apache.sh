#!/bin/sh
#
# Start the Apache HTTP server...
#
case "$1" in
	start|stop|restart|reload)
	apachectl "$1"
	;;
	*)
	echo "Usage: $0 {start|stop|restart}" 
        exit 1
	esac
	exit $?