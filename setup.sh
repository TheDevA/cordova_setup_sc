#!/bin/bash
MAIN_DIR=/cordovasetup
echo "starting..|--------------------"

echo "installing packges..|--------------------"
apt -y install nodejs npm openjdk-8-jdk

echo "installing cordova...|--------------------"
npm install -g cordova

echo "makeing dirs..|--------------------" 
mkdir $MAIN_DIR
chmod 777 $MAIN_DIR
cd $MAIN_DIR

mkdir test
cd $MAIN_DIR/test
mkdir android

echo "creating cordova project...|--------------------"
cordova create hello com.example.hello HelloWorld

cd $MAIN_DIR/test/hello

echo "adding android platform to the project|--------------------"
cordova platform add android

echo "cordova requirements:|--------------------"
cordova requirements


