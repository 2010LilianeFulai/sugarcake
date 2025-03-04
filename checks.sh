#!/bin/bash

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git and try again."
  exit 1
fi

# Check if SSH key is present
if [ ! -f ~/.ssh/id_ed25519 ]; then
  echo "SSH key is not present. Please generate an SSH key and try again."
  exit 1
fi

# Check if SSH key is added to Git
if ! ssh-add -l &> /dev/null; then
  echo "SSH key is not added to Git. Please add the SSH key to Git and try again."
  exit 1
fi

# Check if Git repository is cloned
if [ ! -d ./repository ]; then
  echo "Git repository is not cloned. Please clone the Git repository and try again."
  exit 1
fi

# Check if Git branch is correct
if [ "$(git rev-parse --abbrev-ref HEAD)" != "main" ]; then
  echo "Git branch is not correct. Please switch to the main branch and try again."
  exit 1
fi

echo "All checks passed!"
