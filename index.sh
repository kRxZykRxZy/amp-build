sh deploy/ampmod/clone.sh
cd ../
sh deploy/ampmod/build.sh
cd ../
cp -R ampmod/packages/gui/build /amp-build
cd ../
sh deploy/aw3/clone.sh
cd ../
sh deploy/aw3/build.sh
cd /
cp -R aw3/dist /amp-build