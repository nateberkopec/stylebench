# Stylebench

Run small Ruby prompts through models in Pi and read the code side by side.

```fish
./stylebench run                                   # every model in stylebench.yml
./stylebench run claude-code/claude-opus-5-5:high  # one model
./stylebench run --variant yagni                   # append variants/yagni.md to the system prompt
./stylebench run --only lru --force                # rerun one prompt
./stylebench open                                  # build index.html and open it
```

Each run gets a fresh temp directory with any starter files, and Pi runs with only the `read`, `write`, `edit`, and `bash` tools. Your own AGENTS.md, skills, extensions, and MCP servers are disabled; extensions listed in `stylebench.yml` are loaded explicitly.

A prompt lives in `prompts/<id>/prompt.md`, with `name` and `file` in its frontmatter. Files in `prompts/<id>/starter/` are copied in before the run. Results are cached in `results/` until the prompt, starter files, or variant change.
