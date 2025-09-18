#!/bin/bash
set -e

# Clone ampmod if not present
if [ ! -d "ampmod" ]; then
  git clone https://codeberg.org/ampmod/ampmod
  fi

cd ampmod
npm install
npm run build
cd ..

  # Clone ampmod-web-front if not present
if [ ! -d "ampmod-web-front" ]; then
  git clone https://github.com/ampmod/ampmod-web-front.git
fi

cd ampmod-web-front
npm install
npm run build
cd ..
