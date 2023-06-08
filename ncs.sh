#!/bin/bash
if [ $# -eq 0 ]; then
	echo "usage: $0 <file or path>..."
	exit 1
fi

tar xzvf - $@|pv -L 12M|nc -l 9000
