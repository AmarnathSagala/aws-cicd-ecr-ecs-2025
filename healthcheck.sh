#!/bin/sh
# healthcheck.sh
set -e
curl -fs http://localhost:8080/healthz || exit 1
