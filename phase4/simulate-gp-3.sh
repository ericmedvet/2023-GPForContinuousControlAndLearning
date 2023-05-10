#!/bin/bash

# GP-3
for f in ro-3-ea.m.treeMRF-*.txt; do
  sed "s/FILE_NAME/$f/" ../phase4/play-gp-3-template.txt > play-gp-3.txt
  echo $f $(grep -E -o "data-ro([a-zA-Z0-9-]+).txt" $f) $(java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play-gp-3.txt -j) >> ../phase4/gp-3.tsv
done

