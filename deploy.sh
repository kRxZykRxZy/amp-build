#!/bin/bash
set -e

# Always fresh clone/build ampmod
rm -rf ampmod
git clone https://codeberg.org/ampmod/ampmod
cd ampmod
npm install
npm run ci-build
cd ..

# Always fresh clone/build aw3
rm -rf aw3
git clone https://codeberg.org/ampmod/aw3.git
cd aw3
npm install
npm run build
cd ..

# Clean final dist folder
rm -rf final_dist
mkdir final_dist

# Copy ampmod build first
cp -r ampmod/packages/gui/build* final_dist/   # adjust if it's dist/ instead of build/

# Copy aw3 build afterwards, overwriting duplicates
cp -r aw3/build* final_dist/      # adjust if it's dist/ instead of build/
