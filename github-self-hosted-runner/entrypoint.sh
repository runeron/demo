#!/usr/bin/env bash
set -ex -o pipefail

echo "Running custom entrypoint-script"

./config.sh remove

./config.sh \
  --unattended \
  --url $URL \
  --token $TOKEN \
  --replace \
  --name $RUNNER_NAME \
  --labels $RUNNER_LABELS \
  --work /tmp

exec "$@"
