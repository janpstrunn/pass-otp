#!/usr/bin/env bash

git clone https://github.com/janpstrunn/pass-otp
cd pass

# Install the main script
chmod 700 src/pass-otp
mv src/pass-otp "$HOME/.local/bin/"

# Install man pages
mkdir -p "$HOME/.local/share/man/man1"
cp docs/pass-otp.1 "$HOME/.local/share/man/man1/"
mandb "$HOME/.local/share/man/" 2>/dev/null || true

if [ "$SHELL" == "bash" ]; then
  # Install Bash autocompletion
  mkdir -p "$HOME/.local/share/bash-completion/completions"
  cp share/_pass-otp.bash "$HOME/.local/share/bash-completion/completions/pass"
elif [ "$SHELL" == "zsh" ]; then
  # Install Zsh autocompletion
  mkdir -p "$HOME/.local/share/zsh/site-functions"
  cp share/_pass-otp "$HOME/.local/share/zsh/site-functions/"
fi

echo "Installation complete. Restart your shell or run 'exec bash'/'exec zsh' to apply changes."
