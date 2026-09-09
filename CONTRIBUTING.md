# Contributing

Contributions of new executors are welcome! The philosophy of this repo is
to keep each executor self-contained, predictable, and easy to review.

## Adding a new executor

Create a new folder under `executors/` named after your executor
(e.g. `executors/my-thing-status/`), containing exactly three files:

```
executors/my-thing-status/
  my-thing-status      # the executable script (same name as the folder)
  README.md            # what it does, output example, dependencies
  prerequisites.sh     # checks (and installs when possible) its dependencies
```

### `my-thing-status`

- Plain shell script (`#!/usr/bin/env bash`), executable (`chmod +x`).
- Should be safe to run every few seconds by GNOME Executor: fast, no
  destructive side effects, no interactive prompts.
- On error or missing data, print a placeholder (e.g. `--`) instead of
  failing loudly — Executor just displays whatever the script prints.

### `README.md`

- Short description of what the executor displays.
- An output example.
- A **Dependencies** section listing every external tool/package required.
- Any relevant configuration notes (e.g. how to adapt it to a different
  device/model).

### `prerequisites.sh`

- Executable script that checks whether the executor's dependencies are
  installed.
- When a dependency can be installed automatically (e.g. via `apt-get` on
  Debian/Ubuntu), do so; otherwise print clear instructions and exit
  non-zero.
- Follow the existing scripts in `executors/*/prerequisites.sh` as a
  reference for the expected output style.

## Wiring it up

- `install.sh` automatically symlinks any `executors/<name>/<name>` script
  into `~/.local/bin/<name>` — no changes needed there.
- `prerequisites.sh` at the repo root automatically runs every
  `executors/*/prerequisites.sh` — no changes needed there either.
- Add a one-line entry for your executor under the `## Executors` section
  of the root [README.md](README.md).

## Pull requests

- Keep one executor per pull request.
- Test `./prerequisites.sh` and `./install.sh` locally before submitting.
