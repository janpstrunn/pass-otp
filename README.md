<img src="https://git.disroot.org/janpstrunn/images/raw/branch/main/pass.png" align="right" height="100"/>
<br>

# pass-otp: A CLI OTP Manager

`pass-otp` is a sophisticated one-time password (OTP) manager designed to complement [pass](https://github.com/janpstrunn/pass), which aims to replace the [passwordstore](https://www.passwordstore.org/) while maintaining its core principles. Crafted in shell, `pass-otp` streamlines the management of OTPs and recovery keys, ensuring robust security standards.

## Features

- **Tree View**: List all files in a tree format using `tree` or `eza`.
- **File Search**: Find files effortlessly using `find` or `fd`.
- **Interactive Selection**: Use `fzf` for interactive password selection.
- **Seamless Import**: Import OTP keys from [passwordstore](https://www.passwordstore.org/).
- **Output Management**: Output OTPs directly to `stdout`.
- **Clipboard Management**: Copy OTPs to the clipboard and clear them after a specified time.
- **Post-Clipboard Commands**: Execute commands after clipboard clearance.
- **Graphical Input**: Use `zenity` for inserting passwords.
- **Dialog Customization**: Specify a dialog tool to get the master password and PIN.
- **OTP Editing**: Edit OTPs using `nano`.
- **Recovery Key Management**: Manage recovery keys efficiently.

## Requirements

- [pass](https://github.com/janpstrunn/pass)

## Installation

```bash
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
> First-time users must set up [pass](https://github.com/janpstrunn/pass) before using `pass-otp`.

## Importing from passwordstore

To import OTPs from `passwordstore`, simply run:

```bash
./pass-otp import
```

If `$PASSWORD_STORE_DIR` is not defined in your `.env` file, use the `-f` flag to set it to the default directory.

## Notes

This script has been tested exclusively on a Linux machine.

## License

This repository is licensed under the MIT License, allowing for extensive use, modification, copying, and distribution.
