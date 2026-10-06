# jabra-battery-status

Prints the battery level of a Jabra headset.

It tries `jabridge battery` first, then falls back to `bluetoothctl` when the
headset is paired directly over Bluetooth (without Jabra USB/dongle detection).

## Output example

```text
🎧 92%
```

If the battery level cannot be read, `--` is shown instead.

## Dependencies

- [Jabra Direct](https://www.jabra.com/software-and-services/jabra-direct)
  (or its command-line bridge `jabridge`) for the primary method.
- `bluetoothctl` (from BlueZ) for the Bluetooth fallback method.

Run `./prerequisites.sh` to check this dependency; it cannot be
auto-installed (no Debian/Ubuntu package), so the script only reports
whether `jabridge` is available and points to the download page otherwise.
