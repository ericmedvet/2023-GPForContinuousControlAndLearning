#!/bin/bash

# oGraphea-1
for f in ro-ea.m.oGraphMRF-*.txt; do
  sed "s/FILE_NAME/$f/" ../phase4/play-ographea-1-template.txt > play-ographea-1.txt
  echo $f $(grep -E -o "data-ro([a-zA-Z0-9-]+).txt" $f) $(java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play-ographea-1.txt -j) >> ../phase4/ographea-1.tsv
done

