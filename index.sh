sh deploy/aw3/clone.sh
pwd
sh deploy/aw3/build.sh
pwd
mkdir aw3/temp
pwd
cp -R aw3/build aw3/temp
pwd
sh deploy/ampmod/clone.sh
pwd
sh deploy/ampmod/build.sh
pwd
cp -R ampmod/packages/gui/build aw3/build
pwd
cp -R aw3/temp aw3/build