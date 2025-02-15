#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: provide a name for the virtual environment"
  exit 1
fi

PYENV_NAME=$1
PYENV_PATH=$HOME/pyenvs/$PYENV_NAME

echo "Creating new python virtual environment (venv) for $1..."

python -m venv $PYENV_PATH

ln -s $PYENV_PATH ./venv

echo "Venv created, activate using 'source venv/bin/activate'"
