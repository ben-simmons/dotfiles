export OPENHANDS_RUNTIME_CONTAINER_IMAGE="docker.all-hands.dev/all-hands-ai/runtime:0.26-nikolaik"
export OPENHANDS_CONTAINER_IMAGE="docker.all-hands.dev/all-hands-ai/openhands:0.26"
export OPENHANDS_CONTAINER_NAME="openhands-app"
export OPENHANDS_CONTAINER_PORT=3000
export OPENHANDS_STATE_BASE="$HOME/.openhands-state"
export OPENHANDS_WORKSPACE_BASE="$HOME/workplace/volumes/openhands-workspace"

openhands_inner() {
  local INNER_CONTAINER_NAME=$(docker ps --filter 'name=openhands-runtime' --format '{{.Names}}')
  docker exec -it "$INNER_CONTAINER_NAME" bash
}

openhands_outer() {
  docker exec -it "$OPENHANDS_CONTAINER_NAME" bash
}

openhands_pull() {
  docker pull $OPENHANDS_RUNTIME_CONTAINER_IMAGE
  docker pull $OPENHANDS_CONTAINER_IMAGE
}

# Regular start. Workspace directory is not mounted, so generated code stays internal to the inner container.
openhands_start() {
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

# Start but also mount the workspace directory where generated code will be stored.
openhands_mount_start() {
  docker run -it --rm --pull=always \
    -e SANDBOX_RUNTIME_CONTAINER_IMAGE=$OPENHANDS_RUNTIME_CONTAINER_IMAGE \
    -e LOG_ALL_EVENTS=true \
    -e SANDBOX_USER_ID=$(id -u) \
    -e WORKSPACE_MOUNT_PATH=$OPENHANDS_WORKSPACE_BASE \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $OPENHANDS_STATE_BASE:/.openhands-state \
    -v $OPENHANDS_WORKSPACE_BASE:/opt/workspace_base \
    -p $OPENHANDS_CONTAINER_PORT:$OPENHANDS_CONTAINER_PORT \
    --add-host host.docker.internal:host-gateway \
    --name $OPENHANDS_CONTAINER_NAME \
    $OPENHANDS_CONTAINER_IMAGE
}

openhands_stop() {
  docker stop $OPENHANDS_CONTAINER_NAME
}
