#!/usr/bin/env bash

start_stack() {
  start_local_ai_packaged
}

start_local_ai_packaged() {
  cd "$STACKS_LOCAL_AI_PACKAGED_DIR"

  # Assuming ollama is already running outside of docker
  # We do this because ollama can't connect to Apple Silicon GPU from docker
  python start_services.py --profile none
}

