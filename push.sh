#!/bin/bash

echo "sbt run.."

sbt stage

echo "cf Push .."

cf push ci1 -p ./target/universal/stage -b java_buildpack --health-check-type=none

echo "cf Push complete"
echo "code"
