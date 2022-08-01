#!/bin/bash

echo "Running unit tests"

ls

cd /github/workspace/test && cp /usr/local/lib/libcgreen.so* . && make test

retcode=$?

if [[ $retcode == 0 ]]
then
	exit 0
else
	exit 1
fi