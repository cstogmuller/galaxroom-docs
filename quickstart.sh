#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

if [ -z "$1" ]; then
  echo "Error: No directory name provided."
  echo "Usage: quickstart.sh <directory-name>"
  exit 1
fi

if ! command -v npx &> /dev/null; then
  echo "Error: npx command not found. Please install Node.js and npm."
  exit 1
fi

if [ -d "./$1" ]; then
  echo "Error: Directory './$1' already exists."
  exit 1
else
  npx create-docusaurus@latest "$1" classic --javascript
  mv "$1/docs" "$1/original_docs"
  mv "$1/blog" "$1/original_blog"
  mv "$1/src/pages/index.js" "$1/src/pages/original_index.js.bak"
  mv "$1/docusaurus.config.js" "$1/original_docusaurus.config.js.bak"
  mv "$1/README.md" "$1/original_README.md"
  rsync -av --exclude="$(basename "${BASH_SOURCE[0]}")" --exclude="$1/" --exclude=".git/" --exclude="LICENSE" ./ "$1/"
  chmod +x "$1/publish.sh"
fi
