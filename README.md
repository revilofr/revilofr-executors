# gnome-executors

A collection of small shell scripts to display hardware status indicators in
the GNOME system bar via the [Executor](https://extensions.gnome.org/extension/2932/executor/)
extension.

## Scripts

### `bin/logitech-battery-status`

Prints the battery level of a Logitech mouse and keyboard connected via the
HID++ / Bluetooth stack, using `upower`.

Devices are looked up by **model name** (e.g. `MX Anywhere`, `MX Keys`)
instead of a fixed UPower device path, because the device index/path is not
stable across suspend/resume or reconnection.

Output example:

```text
🖱️ 90%   ⌨️ 90%
```

If a device is not found, `--` is shown instead of a percentage.

## Install

```bash
./install.sh
```

This symlinks every script in `bin/` into `~/.local/bin`.

## Usage with GNOME Executor

In Executor, add an active command to the status area, pointing to the
installed script, e.g.:

```text
/home/olivier/.local/bin/logitech-battery-status
```

Set an interval (in seconds) matching how often you want the status
refreshed, e.g. 60 seconds.
