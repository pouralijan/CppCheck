#!/bin/bash

cppcheck --enable=all --std=c++11 --language=c++ --output-file=cppcheck-report.txt src

PAYLOAD_CLANG=`cat clang-tidy-report.txt`
PAYLOAD_CPPCHECK=`cat cppcheck-report.txt`

echo $PAYLOAD_CPPCHECK

OUTPUT+=$'\n**CPPCHECK WARNINGS**:\n'
OUTPUT+="$PAYLOAD_CPPCHECK"

echo OUTPUT
