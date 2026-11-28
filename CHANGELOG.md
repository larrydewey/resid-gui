# Changelog

## Unreleased

### Breaking: the Resid Surface Protocol is version 2

- `SemPut` now carries each node's token, and `A11yAction` returns it
  (`docs/rsp.md`). A screen reader's action named a node by number alone
  in version 1, and could land on another widget once the view changed.
- A version 2 core refuses a version 1 shell at `Welcome`, and a version 2
  shell refuses a version 1 core at `Hello`. There is no fallback. A
  third-party shell must update in lockstep with the library it hosts.
  `tools/rsp_shell.py` and `tests/fake_shell.resid` speak version 2.

### Requires Resid r2

- A `PasswordInput` is edited with Resid's `secret_str_splice` (r2,
  `844c5f9e`), so the library no longer declassifies anything:
  `gui_run` and the other entry points need only `display`,
  `accessibility` and `clock(readonly)`. A program's `main` can drop
  `declassify`, unless one of its own functions reads the password.

### Behaviour

- While a `PasswordInput` has focus, `update` sees only Tab, Enter,
  Escape, the arrows, Home, End, Backspace and Delete raw, and no key's
  text. Modifiers are withheld too.
- AT-SPI object paths are `/org/a11y/atspi/accessible/<n>_<token>`. A path
  from an older tree whose number now names another widget is an
  UnknownObject.
- A list keyed by index should keep each record in a `Row` with the text
  that names it (`docs/reference_ui.md`).
