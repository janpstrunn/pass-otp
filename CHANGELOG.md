# Changelog

## [2.3.0] 2025-03-22

### Added

- Remove recovery keys using `rm-recuva`

### Fixed

- Import not working properly

### Changed

- Decrypt gpg keys using `gpg` instead of `pass`
- BREAKING CHANGE: Several improvements to reduce codebase

## [2.2.1] 2025-03-20

### Added

- Installation script
- Notifications to all error messages
- Manpage
- Autocompletion for bash and zsh

### Fixed

- Incorrect Entropy Amplification usage in help menu

## [2.2.0] 2025-03-19

### Added

- Notify if file does not have a OTP key
- Notify when a file is removed
- Default command to `usage` when no command is ran
- Get `NOTIFY` and `CLIP_POST_ACTION` from `.passrc`

### Changed

- Notifications are shorter

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
