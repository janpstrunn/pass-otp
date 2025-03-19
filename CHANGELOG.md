# Changelog

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
