#!/usr/bin/env bash
declare HELP='
setuptool.sh - Helper script for setting up a new machine

SYNOPSIS
    ./setuptool.sh [OPTIONS] COMMAND

DESCRIPTION
    Provides functionality for setting up tools on a new machine

OPTIONS
    --emoji Select a configuration by emoji
    -h, --help Print this message

COMMANDS
    install_build_deps
    localbuild_init
    localbuild {bear, emacs, gambatte-speedrun, rtags, swift, tmux}
    configure {dotfiles, ocaml, ssh-key, emacs}
    install {packages, go, rust}
'

# todo: quote variables

declare script_dir=$(dirname "$BASH_SOURCE")
if [[ "$?" -ne 0 || -z $(ls -1A "$script_dir/../../bash-util-lib") ]] ; then
    echo 'Could not load library functions' 1>&2
    exit 1
fi
source "$script_dir/../../bash-util-lib/bash-util-lib-log.sh"

function run_xplatform_scripts ()
{
    set -e
    local dir=$1
    local emoji=$2

    local xplatform=$(find $dir -name '*.sh')
    for script in ${xplatform[@]} ; do
        "$script"  "$emoji"
    done
}

function run_emoji_scripts ()
{
    set -e
    local dir=$1
    local emoji=$2

    local scripts=$(find $dir -name "*.sh.${emoji}")
    for script in ${scripts[@]} ; do
        "$script"
    done
}

function run_appropriate_script ()
{
    set -e
    local dir=$1
    local emoji=$2
    local command=$3

    [[ -n $command ]] || exit 1

    if [[ -f $dir/${command}.sh ]] ; then
        $dir/${command}.sh $emoji
    elif [[ -f $dir/${command}.sh.$emoji ]] ; then
        $dir/${command}.sh.$emoji
    else
        bash_util_log_fatal "Missing script for command $command on config $emoji"
    fi
}

function install_build_deps ()
{
    set -e
    local emoji=$1

    run_xplatform_scripts $script_dir/localbuild/deps $emoji
    run_emoji_scripts $script_dir/localbuild/deps $emoji
}

function localbuild_all ()
{
    set -e
    local emoji=$1

    run_xplatform_scripts $script_dir/localbuild $emoji
    run_emoji_scripts $script_dir/localbuild $emoji
}

function localbuild ()
{
    local command=$1
    local emoji=$2

    run_appropriate_script $script_dir/localbuild $emoji $command
}

function configure ()
{
    local command=$1
    local emoji=$2

    run_appropriate_script $script_dir/configure $emoji $command
}


function install ()
{
    local command=$1
    local emoji=$2

    run_appropriate_script $script_dir/install $emoji $command
}

function main ()
{
    local emoji=''

    # Parse options
    OPT_RESULTS=$(getopt -o 'h' -a --longoptions 'emoji:,help' -n 'setuptool.sh' -- "$@")
    [[ $? -eq 0 ]] || exit 1
    eval set -- "$OPT_RESULTS"
    while [[ $# -ne 0 ]] ; do
        case "$1" in
            --emoji) emoji="$2"; shift 2 ;;
            --) shift; break ;;
            -h|--help)
                echo "$HELP"
                exit 0 ;;
            *) exit 1 ;;
        esac
    done
    local -a commands=("$@")

    [[ -n $emoji ]] || bash_util_log_fatal "--emoji not specified"

    [[ "${#commands[@]}" -gt 0 ]] || bash_util_log_fatal "command not specified"

    case ${commands[0]} in
        install_build_deps) echo 'install_build_deps'; install_build_deps $emoji ;;
        localbuild_all) echo 'localbuild_init'; localbuild_all $emoji ;;
        localbuild) echo 'localbuild' ${commands[1]} ; localbuild ${commands[1]} $emoji ;;
        configure) echo 'configure' ${commands[1]}; configure ${commands[1]} $emoji ;;
        install) echo 'install'  ${commands[1]}; install ${commands[1]} $emoji ;;
        *) bash_util_log_fatal "Unrecognized command" ;;
    esac
}

main "$@"
