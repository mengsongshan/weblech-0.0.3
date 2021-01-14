#!/bin/sh

echo "Building WebLech..."

echo "Building Spider..."
javac -classpath lib/log4j-1.1.3.jar -d classes src/weblech/spider/*.java src/weblech/ui/*.java src/weblech/util/*.java

echo "Building Jar..."
cd classes
jar cfm weblech.jar ../Manifest.txt weblech/* ../lib 
mv weblech.jar ../weblech.jar  

echo "Spider built."

