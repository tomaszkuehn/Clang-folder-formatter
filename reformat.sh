#!/bin/bash

walk_dir () {    
    shopt -s nullglob dotglob

    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            walk_dir "$pathname"
        else
            case "$pathname" in
                *.c|*.cpp|*.h|*.hpp)
                    printf '%s\n' "$pathname"
		    pathname1=$pathname."X"
		    printf '%s\n' "$pathname1"
		    clang-format-6.0 -style=file $pathname > $pathname1
#		    clang-format-9 -style=file $pathname > $pathname1
            esac
        fi
    done
}

walk_dir "$1"
