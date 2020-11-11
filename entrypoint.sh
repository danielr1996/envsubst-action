#!/bin/sh
set -e
envsubst < $INPUT_INPUT > tmp
mv tmp $INPUT_OUTPUT
