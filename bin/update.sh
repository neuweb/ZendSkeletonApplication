#!/bin/bash
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
appDir="$( cd -P "$( dirname "$SOURCE" )/../" && pwd )"
cd $appDir
echo "----==== Updating composer library ====----"
composer self-update
echo "----==== Updating application requirements ====----"
composer update
echo "----==== Updating Autoloads ====----"
sh bin/gen_autoloads.sh
