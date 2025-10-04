#!/bin/bash
set -e  # Exit immediately if a command fails

# 1. Create temporary folder
mkdir -p aw3/temp

# 2. Clone and build ampmod
echo "Cloning and building ampmod..."
sh deploy/ampmod/clone.sh
sh deploy/ampmod/build.sh

# 3. Copy ampmod build to temp
echo "Copying ampmod build to temp..."
cp -R ampmod/packages/gui/build aw3/temp/ampmod

# 4. Build aw3
echo "Building aw3..."
sh deploy/aw3/build.sh

# 5. Merge temp builds into final aw3 build directory
echo "Merging ampmod build into aw3/build/build..."
cp -R aw3/temp/* aw3/build/build/

# 6. Cleanup temp folder (optional)
rm -rf aw3/temp

echo "Build complete! ampmod is now available at aw3/build/build/ampmod"
