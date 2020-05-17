#!/bin/sh

# Originally from https://github.com/latex3/latex3
# This script is used for building LaTeX files using Travis
# A minimal current TL is installed adding only the packages that are required

# See if there is a cached version of TeX Live available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  # Install a minimal system
  ./install-tl --profile=../texlive/texlive.profile

  cd ..
fi

# Just including texlua so the cache check above works
tlmgr install luatex

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TeX Live install but add nothing new
tlmgr update --self --all --no-auto-install
