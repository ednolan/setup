#!/bin/bash

TMP="$(mktemp /tmp/stdin-XXX)"
cat >$TMP
emacs -Q --eval="(progn (toggle-debug-on-error) (add-to-list 'load-path \"~/.emacs.d/elpa/clipetty-20200327.2241\") (require 'clipetty) (global-clipetty-mode) (find-file \"$TMP\") (mark-whole-buffer) (kill-ring-save nil nil 't) (kill-emacs))" < /dev/tty
rm $TMP
