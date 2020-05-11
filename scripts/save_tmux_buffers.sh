#!/bin/bash

function main()
{
    [[ -z $TMUX ]] || exit 1
	local outdir="$HOME/tmux-bufs"
	mkdir -p $outdir
	local -a tmux_bufs=($(tmux ls | cut -d' ' -f1 | tr -d ':'))
	for buf in ${tmux_bufs[@]} ; do
        if [[ $buf != "pw" ]] ; then
		    tmux a -t $buf
		    local -a windows=($(tmux list-windows | cut -d' ' -f1 | tr -d ':'))
		    for window in ${windows[@]} ; do
			    tmux select-window -t $window
			    local -a panes=($(tmux list-panes | cut -d' ' -f1 | tr -d ':'))
			    for pane in ${panes[@]} ; do
				    tmux select-pane -t $pane
				    tmux capture-pane -S -50000
				    tmux save-buffer "$outdir/${buf}-${window}-${pane}.txt"
			    done
		    done
        fi
	done
}

main "$@"
