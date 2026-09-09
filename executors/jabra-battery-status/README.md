# jabra-battery-status

Prints the battery level of a Jabra headset using `jabridge battery`.

## Output example

```text
🎧 92%
```

If the battery level cannot be read, `--` is shown instead.

## Dependencies

- [Jabra Direct](https://www.jabra.com/software-and-services/jabra-direct)
  (or its command-line bridge `jabridge`), with the headset paired/connected.

Run `./prerequisites.sh` to check this dependency; it cannot be
auto-installed (no Debian/Ubuntu package), so the script only reports
whether `jabridge` is available and points to the download page otherwise.
