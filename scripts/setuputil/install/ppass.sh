#!/usr/bin/env bash

cat >$HOME/.local/bin/ppass <<EOF
#!/bin/bash
(
    flock 200
    exec /usr/bin/pass "$@"
) 200>/tmp/pass.lock
EOF

chmod +x $HOME/.local/bin/ppass
