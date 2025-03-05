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

stack_print_config() {
  if [ $# -eq 0 ]; then
    # No args, inspect everything
    for container in $(docker compose -p localai ps -q); do
      name=$(docker inspect -f '{{.Name}}' $container)
      echo -e "\n\n========== $name ==========\n"
      docker inspect $container
    done
  else
    # With args, inspect the specific containers
    for container in "$@"; do
      name=$(docker inspect -f '{{.Name}}' $container)
      echo -e "\n\n========== $name ==========\n"
      docker inspect $container
    done
  fi
}

stack_search_config() {
  for container in $(docker compose -p localai ps -q); do
    name=$(docker inspect -f '{{.Name}}' $container)
    result=$(docker inspect $container | grep -i "$1")
    if [ ! -z "$result" ]; then
      echo -e "\n=== $name ===\n$result"
    fi
  done
}
