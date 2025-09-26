sh deploy/ampmod/clone.sh
sh deploy/ampmod/build.sh
cp -R ampmod/packages/gui/build /amp-build
sh deploy/aw3/clone.sh
sh deploy/aw3/build.sh
cp -R aw3/dist /amp-build