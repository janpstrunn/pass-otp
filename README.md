<img src="https://git.disroot.org/janpstrunn/images/raw/branch/main/pass.png" align="right" height="100"/>
<br>

<h1 align="left">Pass-OTP</h1>

`pass-otp` is a simple password manager for OTP passwords written in shell, mean to be used alongside [pass](https://github.com/janpstrunn/pass) which tries to replace the [passwordstore](https://www.passwordstore.org/) keeping its core philosophies.

It's a CLI tool that tries to make the process of managing one time passwords (OTP) a breeze while keeping yourself secure with good security standards. [Aware some current potential security issues](#potential-security-issues).

## Features

- List all files in a tree format using `tree` or `eza`
- Find files using `find` or `fd`
- Interactive password selection using `fzf`
- Import otp keys from passwordstore
- Output otp to `stdout`
- Run any `git` command
- Edit otp
- Copy otp to clipboard and clear clipboard on specified time

## Requirements

- `age`
- `git`
- `srm`
- `bash`, `zsh`, `fish` or any other shell
- `oathtool`
- `xclip` or `wl-clipboard`

### Optional Requirements

- `fzf`
- `eza`
- `fd`

## Installation

```
git clone https://github.com/janpstrunn/pass-otp
cd pass-otp
chmod 700 src/pass
mv src/pass "$HOME/.local/bin"
```

## Configuration

Environment Variables:

- `PASS_STORE`: Password Directory. Default to `"$HOME/.pass/"`
- `PASSRC`: Configuration file. Default to `"$HOME/.passrc`

Configuration File:

- `FORCE`: Always ignore confirmation dialogs
- `CLIPHIST_WIPE`: Clears the cliphist database
- `CLIPBOARD_CLEAR_TIME`: Time in seconds to clear the clipboard

## Usage

```
Pass-OTP: OTP Password Manager

Usage: $0 [options] <command> [arguments]

Options:
  -c, --clip        Copy OTP to clipboard after generating or editing
  -f, --force       Bypass confirmation dialogs
  -h, --help        Display this help message and exit
  -o                Print OTP to stdout

Commands:
  clip <pass-name>         Copy OTP to clipboard
  edit <pass-name>         Edit an existing OTP using nano
  find <pass-name>         Search OTP entries and display as a tree
  import                   Import OTP keys from password store
  list, ls                 List all OTP files in a tree format
  new, generate [-f -c] <pass-name> <OTPKEY>
                           Generate a new OTP entry
  rm, remove [-f] <pass-name>
                           Remove an OTP entry
  version                  Display the current version number

Examples:
  $0 new -c MyService ABCDEFGHIJKLMNOP
  $0 clip MyService
  $0 list
```

First time running `pass-otp`, requires to use setup your [pass](https://github.com/janpstrunn/pass) first.

## Potential Security Issues

- A non-encrypted format of keys are stored at `/run/user/$(id -u)` when accessing their private keys
  - main.age is kept until session ends
  - pass.age is kept until an command ends
- Filenames and directories are kept non-encrypted, including git comments mentioning their names

## License

This repository is licensed under the MIT License, a very permissive license that allows you to use, modify, copy, distribute and more.
