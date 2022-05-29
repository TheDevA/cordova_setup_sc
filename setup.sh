#!/bin/bash
echo "starting.."

echo "installing packges.."
apt -y install nodejs npm openjdk-8-jdk

echo "installing cordova..."
npm install -g cordova

echo "makeing dirs.." 
cd $HOME/Desktop/

mkdir test
cd $HOME/Desktop/test
mkdir android

echo "creating cordova project..."
cordova create hello com.example.hello HelloWorld

cd $HOME/Desktop/test/hello

echo "adding android platform to the project"
cordova platform add android

echo "cordova requirements:"
cordova requirements


