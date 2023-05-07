#!/bin/bash
for f in ../phase1/ro-*.txt; do
   echo $f
   sed -i 's/^runOutcome/ea.runOutcome/' $f
   sed -i 's/operators.*$//' $f
done

