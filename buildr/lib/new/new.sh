# ./lib/new/new.sh
#!/bin/bash
execute_new_command() {
    if [ "$1" = "" ]; then
        echo "Error: A project name must be given after the command 'new'"
        exit 1
    else
        echo "Building workspace for project '${1}'"
    fi
}

create_base_directories() {
    mkdir $1
    mkdir {$1/config,$1/lib,$1/test}
    touch $1/config/.keep && touch $1/lib/.keep
}
