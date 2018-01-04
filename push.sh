#!/bin/bash

echo "setting env variables"

export ACCESS_KEY=polar
export SECRET_KEY=bear
export BUCKET_NAME=albatross
export REGION=eu-west-2
export FILE_DOMAIN=penguin
export SICE_DUMMYMANAGER=salim.ullah@beis.gov.uk

echo "sbt run.."

sbt stage

echo "cf Push .."

cf push ci1 -p ./target/universal/stage -b java_buildpack --health-check-type=none

echo "cf Push complete"