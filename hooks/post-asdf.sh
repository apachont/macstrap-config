#!/bin/sh
set -e

# Source asdf.sh such that the installs don't fail
. $(brew --prefix asdf)/libexec/asdf.sh

# Ensure GPG is installed as the NodeJS installation requires it
brew install gpg

# Install ASDF Java plugin
asdf plugin add java || true

# Install Java 8
asdf install java liberica-8u362+9 || true

# Install Java 11
asdf install java liberica-11.0.16+8 || true

# Install Java 16
asdf install java liberica-16.0.2+7 || true

# Install Java 17 and set it globally as default
asdf install java liberica-17.0.6+10 || true
asdf global java liberica-17.0.6+10 || true

# Install Java 18
asdf install java liberica-18.0.2.1+1 || true

# Install ASDF NodeJS plugin
asdf plugin add nodejs || true

# Install NodeJS 16.14.2 and set it globally as default
asdf install nodejs 18.13.0 || true
asdf global nodejs 18.13.0 || true
