#!/usr/bin/env bash

pretty_print() { printf "\n%b\n" "$1" }
pretty_print "Here we go..."

if ! command -v brew &>/dev/null;
then
  # Install Homebrew
  pretty_print "Installing Homebrew"
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install
else
  pretty_print "Homebrew alreadly installed"
  pretty_print "Updating Homebrew"
  brew update
fi


if ! command -v git &>/dev/null;
then
  # Install Git
  pretty_print "Installing Git"
  brew install git
else
  pretty_print "Git already installed"
fi


if ! command -v gh &>/dev/null;
then
  # Install GH
  pretty_print "Installing GH"
  brew install gh
else
  pretty_print "GH already installed"
fi

pretty_print "All done"
