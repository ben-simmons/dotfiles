# OpenHands

* Docs: https://docs.all-hands.dev/
* Git: https://github.com/All-Hands-AI/OpenHands

## Using

1. Start with`openhands_start`
    * Custom function in `openhands.sh` to start the OpenHands container.
2. Go to http://localhost:3000 in your browser.
3. Stop with `openhands_stop`.

Note that this really burns through tokens, because every prompt sends the entire history of prompts to your LLM.

They will hopefully optimize in future, see https://github.com/All-Hands-AI/OpenHands/issues/6893.


## Installing

Docs: https://docs.all-hands.dev/modules/usage/installation

Mounting: https://docs.all-hands.dev/modules/usage/runtimes#connecting-to-your-filesystem

I wrote some bash functions to do the work, referenced above. It will do a couple docker pulls the first time you start the server.


## Info

Settings like your API key are stored by the outer container where mounted from your filesystem (`~/.openhands-state`).

Generated code is stored in the inner container in `/workspace`.

Browse the generated code by:
1. Opening a shell on the inner container: `openhands_inner`
2. `cd /workspace`

Note that the inner container isn't created until you go to http://localhost:3000 and give it a prompt.

