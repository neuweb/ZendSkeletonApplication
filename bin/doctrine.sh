#!/bin/bash
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
scriptDir="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
rootDir="$( cd -P "$( dirname "$scriptDir/../../" )" && pwd )"
cd $rootDir
doHelp="TRUE"
function doHelp(){
    echo ""
    echo "This script requires function to run against."
    echo ""
    echo "Usage: sh bin/doctrine <function>"
    echo "Example: sh bin/doctrine.sh validate"
    echo ""
    echo "Available functions: "
    echo "validate  - Validates the schema(s) <orm:validate-schema>"
    echo "create    - Creates the schema(s)   <orm:schema-tool:create>"
    echo "drop      - Deletes the schema(s)   <orm:schema-tool:drop>"
    echo "update    - Does an update check on schema(s) <orm:schema-tool:update>"
    echo "upgrade   - Does a forced update to schema(s) <orm:schema-tool:update --force>"
    echo ""
}

if [ -n "$1" ]; then
    if [ "$1" == "validate" ]; then
        php ./vendor/bin/doctrine-module orm:validate-schema
        exit 0
    fi
    if [ "$1" == "create" ]; then
        php ./vendor/bin/doctrine-module orm:schema-tool:create
        exit 0
    fi
    if [ "$1" == "drop" ]; then
        php ./vendor/bin/doctrine-module orm:schema-tool:drop
        exit 0
    fi
    if [ "$1" == "update" ]; then
        php ./vendor/bin/doctrine-module orm:schema-tool:update
        exit 0
    fi
    if [ "$1" == "upgrade" ]; then
        php ./vendor/bin/doctrine-module orm:schema-tool:update --force
        exit 0
    fi
    if [ "$doHelp" == "TRUE" ]; then
        doHelp
    fi
else
    doHelp
fi
