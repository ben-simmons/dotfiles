export OPENHANDS_RUNTIME_CONTAINER_IMAGE="docker.all-hands.dev/all-hands-ai/runtime:0.26-nikolaik"
export OPENHANDS_CONTAINER_IMAGE="docker.all-hands.dev/all-hands-ai/openhands:0.26"
export OPENHANDS_CONTAINER_NAME="openhands-app"
export OPENHANDS_CONTAINER_PORT=3000
export OPENHANDS_STATE_BASE="$HOME/.openhands-state"

alias openhands="openhands_start"
alias openhands_outer="dockbash $OPENHANDS_CONTAINER_NAME"

openhands_inner() {
  local INNER_CONTAINER_NAME=$(docker ps --filter 'name=openhands-runtime' --format '{{.Names}}')
  docker exec -it "$INNER_CONTAINER_NAME" bash
}

# Uncomment and set the following to mount a workspace volume:
#export OPENHANDS_WORKSPACE_BASE="$HOME/workplace/volumes/openhands"
#mkdir -p "$OPENHANDS_WORKSPACE_BASE"

openhands_start() {
  docker pull $OPENHANDS_RUNTIME_CONTAINER_IMAGE
  docker pull $OPENHANDS_CONTAINER_IMAGE

  # Add the following to the docker run command to mount a workspace volume:
  #    -e SANDBOX_USER_ID=$(id -u) \
  #    -e WORKSPACE_MOUNT_PATH=$OPENHANDS_WORKSPACE_BASE \
  #    -v $OPENHANDS_WORKSPACE_BASE:/opt/workspace_base \
  docker run -it --rm --pull=always \
    -e SANDBOX_RUNTIME_CONTAINER_IMAGE=$OPENHANDS_RUNTIME_CONTAINER_IMAGE \
    -e LOG_ALL_EVENTS=true \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $OPENHANDS_STATE_BASE:/.openhands-state \
    -p $OPENHANDS_CONTAINER_PORT:$OPENHANDS_CONTAINER_PORT \
    --add-host host.docker.internal:host-gateway \
    --name $OPENHANDS_CONTAINER_NAME \
    $OPENHANDS_CONTAINER_IMAGE
}

openhands_stop() {
  docker stop $OPENHANDS_CONTAINER_NAME
}
