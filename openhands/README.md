# OpenHands

* Docs: https://docs.all-hands.dev/
* Git: https://github.com/All-Hands-AI/OpenHands

## Using

1. Start with`openhands_start`
    * Custom function in `openhands.sh` to start the OpenHands container.
2. Go to http://localhost:3000 in your browser.
3. Stop with `openhands_stop`.

Note that OpenHands really burns through tokens, because every prompt sends the entire history of prompts to your LLM.

They will hopefully optimize in future, see https://github.com/All-Hands-AI/OpenHands/issues/6893.


## Installing

Docs: https://docs.all-hands.dev/modules/usage/installation

Mounting: https://docs.all-hands.dev/modules/usage/runtimes#connecting-to-your-filesystem

I wrote some bash functions to do the work, referenced above. Pull the docker images with `openhands_pull`.


## Info

Persistent settings like your LLM API key are stored by the outer container where mounted from your filesystem (`~/.openhands-state`).

If you start with `openhands_start`, generated code is stored in the inner container in `/workspace`. 

If you start with `openhands_mount_start`, i.e. set the `WORKSPACE_MOUNT_PATH`, you can access the generated code on your host machine in that directory on your local filesystem.
Useful because you'll have all your tools available instead of whatever limited tools are available via a docker bash session on the inner container.

Note that the inner container isn't created until you go to http://localhost:3000 and give it a prompt.

Outer container:
* Command: `/app/entrypoint.sh uvicorn openhands.server.listen:app --host 0.0.0.0 --port 3000`

Inner (runtime) container:
* Command: `/openhands/micromamba/bin/micromamba run -n openhands poetry run python -u -m openhands.runtime.action_execution_server 35833 --working-dir /workspace --plugins agent_skills jupyter vscode --username openhands --user-id YOUR_UID`

