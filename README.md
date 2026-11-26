# Stylebench

Run small Ruby prompts through coding models and read the code side by side.

See the results: https://nateberkopec.github.io/stylebench/

Stylebench is for judging style, not correctness. Each prompt asks for 10 to 20 lines of Ruby, and the page shows what every model wrote, with a line count, tool call count, run time, token count, estimated cost, and [Standard](https://github.com/standardrb/standard) offence count.

## Requirements

- Ruby 3.2 or newer, with Bundler
- [Pi](https://github.com/earendil-works/pi), logged in to at least one model provider

## Quickstart

```sh
git clone https://github.com/nateberkopec/stylebench
cd stylebench
pi --list-models                       # see which models you can use
./stylebench run openai/gpt-6.2-sol    # run all 16 prompts on one model
./stylebench open                      # build the page and open it
```

The first build installs Standard with Bundler.

## Commands

```sh
./stylebench run                                     # every model in your config
./stylebench run anthropic/claude-opus-5-5:high      # one model, with a thinking level
./stylebench run --variant none --variant yagni      # with and without variants/yagni.md
./stylebench run --only lru --force                  # rerun one prompt
./stylebench build                                   # rebuild out/site/index.html
./stylebench publish                                 # push the page to your gh-pages branch
```

`publish` force-pushes only the built page to the `gh-pages` branch of your `origin` remote. Turn on GitHub Pages for that branch once, in the repository settings.

## Configuration

`stylebench.yml` lists the default models. To use your own without touching it, create `stylebench.local.yml`, which git ignores and which overrides any key:

```yaml
models:
  - openai/gpt-6.2-sol:medium
  - anthropic/claude-opus-5-5
pi: ["pi"]                       # the command used to start Pi
extensions:                      # Pi extensions to load, such as custom providers
  - ~/path/to/extension.ts
```

`prices.yml` maps each model to its price in USD per million tokens, as `[input, cached input, output]`. The page uses it to estimate what each run cost. Models missing from it show tokens but no cost.

## How a run works

Each run gets a fresh temp directory containing any starter files. Pi runs there with only the `read`, `write`, `edit`, and `bash` tools. Your AGENTS.md, skills, extensions, and MCP servers are disabled, so the only thing that differs between runs is the model and the variant.

Models can run shell commands in that directory. Run Stylebench only with models and providers you trust with that.

Results are cached in `out/results/` until the prompt, starter files, or variant change. Everything under `out/` is generated and ignored by git.

## Adding prompts and variants

A prompt is a directory under `prompts/`:

```
prompts/lru/prompt.md        # frontmatter: name, file; body: the prompt
prompts/lru/starter/         # optional files copied in before the run
```

`file` names the file the model should write, and is the file shown on the page. If the prompt has a starter file with that name, the page tints the lines the model changed.

A variant is a Markdown file under `variants/`. Its text is appended to Pi's system prompt, which lets you see what an instruction changes.

## Licence

MIT
