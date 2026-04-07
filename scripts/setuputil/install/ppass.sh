#!/usr/bin/env bash

mkdir -p $HOME/.local/bin
cat >$HOME/.local/bin/ppass <<'EOF'
#!/bin/bash
(
    flock 200
    exec pass "$@"
) 200>/tmp/pass.lock
EOF

chmod +x $HOME/.local/bin/ppass
