#!/bin/bash

echo "$DIRS"

cppcheck --enable=all --std=c++11 --language=c++ --output-file=cppcheck-report.txt $DIRS

PAYLOAD_CPPCHECK=`cat cppcheck-report.txt`

echo "Cppcheck errors:"
echo $PAYLOAD_CPPCHECK

OUTPUT+=$'\n**CPPCHECK WARNINGS**:\n'
OUTPUT+="$PAYLOAD_CPPCHECK"

echo $OUTPUT
