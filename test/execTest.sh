#!/bin/sh

RESULT=$(aspell -a < ipsum.txt | grep -E '^&')
LINES=$(echo ${RESULT}| wc -l)

echo "========= Test Result ========="
echo "${RESULT}"
echo "==============================="

if [ ${LINES} ]; then
    echo "[ OK ] It seems aspell executed correctly."
    exit 0
else
    echo "[ NG ] It seems aspell executed in-correctly."
    exit 1
fi
