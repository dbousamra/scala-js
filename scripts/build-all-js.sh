#! /bin/sh

tasks="fastOptJS fullOptJS"
projects="helloworld/ reversi/ testingExample/test: testSuite/test:"

for v in 2.11.6 2.10.5 2.12.0-M1; do
    echo "++$v"
    echo "package"

    for p in $projects; do
        for t in $tasks; do
            echo "$p$t"
        done
    done
done | sbt
