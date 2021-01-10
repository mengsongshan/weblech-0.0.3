#!/bin/sh

echo "Building WebLech..."
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
java -version

echo "Building Spider..."
javac -classpath lib/log4j-1.1.3.jar -d classes src/weblech/spider/*.java src/weblech/ui/*.java src/weblech/util/*.java

echo "Building Jar..."
cd classes
jar cfm weblech.jar ../Manifest.txt weblech/* ../lib 
mv weblech.jar ../weblech.jar  

echo "Spider built."

