#!/bin/bash

echo "setting env variables"



echo "sbt run.."

sbt stage

echo "cf Push .."

cf push

echo "cf Push complete"