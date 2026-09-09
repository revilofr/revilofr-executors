# logitech-battery-status

Prints the battery level of a Logitech mouse and keyboard connected via the
HID++ / Bluetooth stack, using `upower`.

Devices are looked up by **model name** (e.g. `MX Anywhere`, `MX Keys`)
instead of a fixed UPower device path, because the device index/path is not
stable across suspend/resume or reconnection.

## Output example

```text
🖱️ 90%   ⌨️ 90%
```

If a device is not found, `--` is shown instead of a percentage.

## Dependencies

- [`upower`](https://gitlab.freedesktop.org/upower/upower) — reads the
  battery status exposed by the kernel HID++/Bluetooth drivers.

Run `./prerequisites.sh` to check (and install, on Debian/Ubuntu) this
dependency.

## Configuration

The scripts matches devices by model name. If your mouse/keyboard is not a
Logitech `MX Anywhere` / `MX Keys`, edit the `find_percentage` calls at the
bottom of the script to match your own device model (see `upower -e` and
`upower -i <path>` to find it).
