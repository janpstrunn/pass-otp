# Changelog

## [2.1.1-1] 2025-03-19

### Added

- Check if `pass` is in the same directory

### Fixed

- Fix `otp-import` function not being called
- Fix copying OTP to clipboard not working

## [2.1.1] 2025-03-19

### Added

- Option to force import passwords from passwordstore, by force setting PASSWORD_STORE_DIR as `$HOME/.password-store/`

### Fixed

- Proper variable setting to some scriptable functions

## [2.1.0] 2025-03-19

### Added

- Option to manage recovery keys using `nano`

## [2.0.0] 2025-03-19

### Changed

- Refactored all code to support the latest version of `pass` 2.2.0
- `pass-otp` depends on `pass`. This removes many redundant code, keeping `pass-otp` much cleaner then `pass`

## [1.0.0] 2025-03-17

### Added

- List all files in a tree format using `tree` or `eza`
- Find files using `find` or `fd`
- Interactive password selection using `fzf`
- Import otp keys from passwordstore
- Output otp to `stdout`
- Run any `git` command
- Edit otp
- Copy otp to clipboard and clear clipboard on specified time
