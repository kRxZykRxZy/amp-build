sh deploy/aw3/clone.sh
pwd
mkdir aw3/temp
pwd
sh deploy/ampmod/clone.sh
pwd
sh deploy/ampmod/build.sh
pwd
cp -R ampmod/packages/gui/build aw3/temp
pwd
sh deploy/aw3/build.sh
pwd
cp -R aw3/temp aw3/build/build
