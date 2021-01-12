#!/bin/bash

# Program : Script to install kaldi toolkit in pwd.
# language: bash
# Author  : S.Moris

# Donwload source files from github repo : Comment if already downloaded
git clone https://github.com/kaldi-asr/kaldi.git kaldi --origin upstream
# Check for any source updates.
git pull
# Move into the installation directory.
cd kaldi
# Move to tools directory.
cd tools
# Check for dependencies.
bash extras/check_dependencies.sh
# Run Make : 4jobs.
make -j 4
# Switch direcotry for next steps.
cd ../src
# Run configure and compile kaldi again.
./configure
make depend -j 4
make -j 4
