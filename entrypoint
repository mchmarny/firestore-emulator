#!/bin/bash

set -xe

if [[ -z "${INPUT_PROJECTID}" ]]; then
  echo "environment variable required: PROJECTID" >&2
  exit 1
fi

PORT=${INPUT_PORT:-'8888'}

gcloud config set project "${INPUT_PROJECTID}"
gcloud beta emulators firestore start --host-port="0.0.0.0:${PORT}"