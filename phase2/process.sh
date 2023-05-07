#!/bin/bash

# GP-1
for f in ro-gp-1-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-gp-1-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

# GP-3
for f in ro-gp-3-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-gp-3-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

# GA-1
for f in ro-ga-1-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-ga-1-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

# GA-3
for f in ro-ga-3-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-ga-3-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

# oGraphEA-1
for f in ro-ographea-1-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-ographea-1-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

# oGraphEA-3
for f in ro-ographea-3-*.txt; do
  echo $f
  if [ ! -f "../phase2/data-$f" ]
  then
    sed "s/FILE_NAME/$f/" ../phase2/saver-play-ographea-3-template.txt > play.txt
    java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f play.txt -v
  fi
done

