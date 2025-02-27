# OpenHands

* Docs: https://docs.all-hands.dev/
* Git: https://github.com/All-Hands-AI/OpenHands

## Using

1. `openhands`
    * Custom function in `openhands.sh` to start the OpenHands container.
2. Go to http://localhost:3000 in your browser.


## Installing

Docs: https://docs.all-hands.dev/modules/usage/installation

Mounting: https://docs.all-hands.dev/modules/usage/runtimes#connecting-to-your-filesystem

I wrote some bash functions to do the work, referenced above, but the more detailed explanations are below.


### Prep

Create a directory in your filesystem that can be mounted to the OpenHands container.

Note that OpenHands can modify and delete any files in this directory!
```
mkdir -p ~/workplace/volumes/openhands
```

I export this as `OPENHANDS_WORKSPACE_BASE`.


### Download
```
docker pull docker.all-hands.dev/all-hands-ai/runtime:0.26-nikolaik
```

### Run

```
docker run -it --rm --pull=always \
    -e SANDBOX_RUNTIME_CONTAINER_IMAGE=docker.all-hands.dev/all-hands-ai/runtime:0.26-nikolaik \
    -e LOG_ALL_EVENTS=true \
    -e SANDBOX_USER_ID=$(id -u) \
    -e WORKSPACE_MOUNT_PATH=OPENHANDS_WORKSPACE_BASE \
    -v OPENHANDS_WORKSPACE_BASE:/opt/workspace_base \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ~/.openhands-state:/.openhands-state \
    -p 3000:3000 \
    --add-host host.docker.internal:host-gateway \
    --name openhands-app \
    docker.all-hands.dev/all-hands-ai/openhands:0.26
```

The container will mount your `OPENHANDS_WORKSPACE_BASE` directory at `/opt/workspace_base` in the container.
