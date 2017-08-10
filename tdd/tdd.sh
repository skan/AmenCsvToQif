#!/bin/bash

DEFAULT_LIST="listMvmts.csv"
DEFAULT_ENCOURS="encours_default.csv"
DEFAULT_RESULT="default.qif"
DEFAULT_OUTPUT="listMvmts.qif"

../amenCsvToQif.bash $DEFAULT_LIST $DEFAULT_ENCOURS
if cmp -s "$DEFAULT_OUTPUT" "$DEFAULT_RESULT"; then
   echo "DEFAULT TEST      PASS"
else
   echo "DEFAULT TEST      FAIL"
fi
