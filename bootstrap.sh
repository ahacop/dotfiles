#!/bin/bash

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then

  # install homebrew if it's missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo "Brew already installed; Skipping brew install"
  fi

  if [ -f "$HOME/.Brewfile" ]; then
    echo "Updating homebrew bundle"
    brew bundle --global
  else
    echo "Skipping brew bundle"
  fi

  if [ -f "$HOME/.macos" ]; then
    echo "Running macos defaults"
    "$HOME/.macos"
  else
    echo "Skipping macos defaults"
  fi
else
  echo "Skipping macos setup"
fi

echo "Bootstrap finished"
