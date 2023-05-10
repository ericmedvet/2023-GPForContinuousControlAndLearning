#!/bin/bash

# GP-1
for f in ro-ea.m.mlpMRF-*.txt; do
  sed "s/FILE_NAME/$f/" ../phase4/play-ga-1-template.txt > play-ga-1.txt
  echo $f $(grep -E -o "data-ro([a-zA-Z0-9-]+).txt" $f) $(java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play-ga-1.txt -j) >> ../phase4/ga-1.tsv
done

