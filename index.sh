sh deploy/ampmod/clone.sh
sh deploy/ampmod/build.sh
cd /
cp -R deploy/data/ampmod/packages/gui/build /amp-build

sh deploy/aw3/clone.sh
sh deploy/aw3/build.sh
cd /
cp -R deploy/data/aw3/dist /amp-build