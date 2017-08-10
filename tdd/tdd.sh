#!/bin/bash

DEFAULT_LIST="listMvmts.csv"
DEFAULT_ENCOURS="encours_default.csv"
DEFAULT_RESULT="default.qif"
DEFAULT_OUTPUT="listMvmts.qif"

GOLD_CARD_PARSE="improvedGoldCardParse.qif"

../amenCsvToQif.bash $DEFAULT_LIST $DEFAULT_ENCOURS
if cmp -s "$DEFAULT_OUTPUT" "$DEFAULT_RESULT"; then
   echo "DEFAULT TEST      PASS"
else
   echo "DEFAULT TEST      FAIL"
fi

if cmp -s "$DEFAULT_OUTPUT" "$GOLD_CARD_PARSE"; then
   echo "GOLD CARD TEST      PASS"
else
   echo "GOLD CARD TEST      FAIL"
   diff $DEFAULT_OUTPUT $GOLD_CARD_PARSE
fi
