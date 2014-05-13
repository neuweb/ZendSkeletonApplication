#!/bin/bash
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
appDir="$( cd -P "$( dirname "$SOURCE" )/../" && pwd )"
for i in `ls $appDir/module`; do
    php vendor/zendframework/zendframework/bin/classmap_generator.php -l $appDir/module/$i/
done
