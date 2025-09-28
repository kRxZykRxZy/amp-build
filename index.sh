sh deploy/ampmod/clone.sh
sh deploy/ampmod/build.sh
mkdir aw3/build
cp -R ampmod/packages/gui/build aw3/build
sh deploy/aw3/clone.sh
sh deploy/aw3/build.sh