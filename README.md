# 2023-GPForContinuousControlAndLearning
Experiments on GP for continuous control

## Prerequisites

We assume that you have [2d-robot-evolution](https://github.com/ericmedvet/2d-robot-evolution) available.
Here, we assume that it's in `/home/eric/IdeaProjects/`.

For each phase, restart from the root directory of the project. 

## Phase 1: evolve controllers

```shell
cd phase1
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.jgea.experimenter.Starter -b io.github.ericmedvet.robotevo2d.main.PreparedNamedBuilder --expFile phase1-embodied.txt -nt <nOfThreads>
```

## Phase 2: save learning sets

```shell
cd phase1
sh ../phase2/process.sh
```

## Phase 3: evolve regressors from saved data

For 1 signal:
```shell
cd phase3
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.jgea.experimenter.Starter -b io.github.ericmedvet.robotevo2d.main.PreparedNamedBuilder --expFile phase3-sr-learning-1.txt -nt <nOfThreads>
```

For 3 signal:
```shell
cd phase3
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.jgea.experimenter.Starter -b io.github.ericmedvet.robotevo2d.main.PreparedNamedBuilder --expFile phase3-sr-learning-3.txt -nt <nOfThreads>
```

## Phase 4: simulations with regressors as controllers

```shell
cd phase3
sh ../phase4/simulate-ga-1.sh
sh ../phase4/simulate-ga-3.sh
sh ../phase4/simulate-gp-1.sh
sh ../phase4/simulate-gp-3.sh
sh ../phase4/simulate-ographea-1.sh
sh ../phase4/simulate-ographea-3.sh
```

## Other things

### Starting the monitoring server (for phase 1 and phase 3)

```shell
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.jgea.experimenter.net.NetListenerServer -k <key>
```

### Save images and videos

```shell
cd images-videos
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-ga-1.txt
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-gp-1.txt
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-graphea-1.txt
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-ga-3.txt
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-gp-3.txt
java -cp "/home/eric/IdeaProjects/2d-robot-evolution/io.github.ericmedvet.robotevo2d.assembly/target/robotevo2d.assembly-bin/modules/*" io.github.ericmedvet.robotevo2d.main.Player -f saver-play-graphea-3.txt
```
