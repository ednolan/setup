#!/usr/bin/env bash

#!/usr/bin/env bash

set -euo pipefail

if [[ -d ~/localbin/vcpkg ]] ; then
    rm -rf ~/localbin/vcpkg
fi
mkdir -p ~/localbin/vcpkg

git clone https://github.com/microsoft/vcpkg.git ~/localbin/vcpkg/vcpkg
cd ~/localbin/vcpkg/vcpkg
./bootstrap-vcpkg.sh
