# revilofr-executors

A collection of small shell scripts to display hardware status indicators in
the GNOME system bar via the [Executor](https://extensions.gnome.org/extension/2932/executor/)
extension.

Each executor lives in its own folder under `executors/`, with its own
`README.md` (documenting its dependencies) and `prerequisites.sh` (checking,
and installing when possible, those dependencies).

## Executors

- [`executors/logitech-battery-status`](executors/logitech-battery-status/README.md) —
  battery level of a Logitech mouse and keyboard.
- [`executors/jabra-battery-status`](executors/jabra-battery-status/README.md) —
  battery level of a Jabra headset.

## Example

Combining the executors above as active commands in GNOME Executor:

![Example status bar](docs/example-status-bar.png)

## Install

```bash
./prerequisites.sh   # check/install each executor's dependencies
./install.sh          # symlink each executor script into ~/.local/bin
```

## Usage with GNOME Executor

In Executor, add an active command to the status area, pointing to the
installed script, e.g.:

```text
/home/yourname/.local/bin/logitech-battery-status
```

Set an interval (in seconds) matching how often you want the status
refreshed, e.g. 60 seconds.

