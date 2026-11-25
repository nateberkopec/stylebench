# Stylebench

Run small Ruby prompts through models in Pi and read the code side by side.

```fish
./stylebench run                                   # every model in stylebench.yml
./stylebench run claude-code/claude-opus-5-5:high  # one model
./stylebench run --variant yagni                   # append variants/yagni.md to the system prompt
./stylebench run --only lru --force                # rerun one prompt
./stylebench open                                  # build out/site/index.html and open it
./stylebench publish                               # build and push the page to the gh-pages branch
```

Each run gets a fresh temp directory with any starter files, and Pi runs with only the `read`, `write`, `edit`, and `bash` tools. Your own AGENTS.md, skills, extensions, and MCP servers are disabled; extensions listed in `stylebench.yml` are loaded explicitly. The `pi` key in `stylebench.yml` sets the command used to start Pi; leave it out to use plain `pi`.

A prompt lives in `prompts/<id>/prompt.md`, with `name` and `file` in its frontmatter. Files in `prompts/<id>/starter/` are copied in before the run. Results are cached in `out/results/` until the prompt, starter files, or variant change. Everything under `out/` is generated and ignored by git; `publish` pushes only the built page.

The page shows a Standard offence count for each result, so `standardrb` must be installed (`gem install standard`).
