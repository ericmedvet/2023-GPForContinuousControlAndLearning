# 2023-GPForContinuousControlAndLearning
Experiments on GP for continuous control

## Prerequisites

We assume that you have [2d-robot-evolution](https://github.com/ericmedvet/2d-robot-evolution) available.
Here, we assume that it's in `/home/eric/IdeaProjects/`.

For each phase, restart from the root directory of the project. 

## Phase 1: evolution

For evolving the controllers:
```shell
cd phase1
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.jgea.experimenter.Starter -b io.github.ericmedvet.robotevo2d.main.PreparedNamedBuilder --expFile phase1-embodied.txt
```

## Phase 2: save learning sets

Example for just one teacher:
```shell
cd phase2
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-gp-1-template.txt
```

