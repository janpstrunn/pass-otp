<img src="https://git.disroot.org/janpstrunn/images/raw/branch/main/pass.png" align="right" height="100"/>
<br>

# pass-otp: A modern CLI OTP manager

`pass-otp` is a simple password manager for OTP passwords written in shell, meant to be used alongside [pass](https://github.com/janpstrunn/pass) which tries to replace the [passwordstore](https://www.passwordstore.org/) keeping its core philosophies.

It's a CLI tool that tries to make the process of managing one time passwords (OTP) and recovery keys a breeze while keeping yourself secure with good security standards.

## Features

- List all files in a tree format using `tree` or `eza`
- Find files using `find` or `fd`
- Interactive password selection using `fzf`
- Import OTP keys from [passwordstore](https://www.passwordstore.org/)
- Output OTP to `stdout`
- Copy OTP to clipboard and clear clipboard on specified time
- Run post commands after clipboard clear
- Use `zenity` to insert passwords
- Specify a dialog tool to get master password and PIN
- Edit OTP using `nano`
- Manage recovery keys

## Requirements

- [pass](https://github.com/janpstrunn/pass)

## Installation

```
curl -sSL https://github.com/janpstrunn/pass-otp/raw/main/install.sh | bash
```

## Usage

```
  ---------------------------------------------------
  ---------------------pass-otp----------------------
  ---------------------------------------------------
  -------------A modern CLI OTP manager--------------
  ---------------------------------------------------

Usage: pass-otp [options] <command> [arguments]

  -a [-s] <salt> [-i] <iteration>
                              Use Entropy Amplification
  -c                          Copy password to clipboard after password creation
  -d <zenity>                 Choose a dialog to get passwords
  -e                          Extra command run post clipboard cleareance
  -f                          Force. Bypass confirmation dialogs. May be destructive.
  -h, --help                  Display this help message and exit
  -l <parallels>              Define paralellism for Entropy Amplification
  -i <iteration>              Define iterations for Entropy Amplification
  -n                          Enable notifications
  -p <pin>                    Antecipate PIN
  -s <salt>                   Define salt for Entropy Amplification
  -z                          Don't keep private key cached

Commands:
  add, new, gen, generate [-f -c] <pass-name> <OTP>
                           Generate a new OTP
  cp, copy, clip [-a] <pass-name>
                           Copy OTP to clipboard
  custom, custom-cmd <pass-cmd> <pin-cmd>
                           Specify a custom dialog to get master OTP and PIN
  edit <pass-name>         Edit OTP key using nano
  find <pass-name>         Search OTPs and display as a tree
  import                   Import OTPs from password store
  ls, list                 List all stored OTPs in a tree format
  out, output, stdout [-a] <pass-name>
                           Print OTP to stdout
  recuva <pass-name>       Use nano to manage recovery keys
  rm, remove [-f] <pass-name>
                           Remove a OTP entry
  rm-recuva                Remove Recovery Key
  version                  Display the current version number

Examples:
  pass-otp new -c MyService ABCDEFGHIJKLMNOP
  pass-otp clip MyService
  pass-otp list
```

> [!IMPORTANT]
> First time running `pass-otp`, requires to use setup your [pass](https://github.com/janpstrunn/pass) first.

## Importing from passwordstore

For those who what to import OTP from `passwordstore`, you can simply run the following command:

```bash
./pass-otp import
```

If `$PASSWORD_STORE_DIR` is not defined in your `.env` file, you can use the `-f` flag to set it to default.

## Notes

This script has been only tested in a Linux Machine.

## License

This repository is licensed under the MIT License, a very permissive license that allows you to use, modify, copy, distribute and more.
