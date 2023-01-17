#!/bin/bash
word="$1"
if grep -Fxq "$word" /usr/share/dict/american-english
then
 echo "The word exists in English."
else
 echo "The word does not exist in English."
fi
