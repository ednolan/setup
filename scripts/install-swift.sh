#!/bin/bash

sudo apt-get install clang libicu-dev
mkdir -p ~/swiftstuff
wget -P ~/swiftstuff https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz
wget -P ~/swiftstuff https://swift.org/builds/swift-5.0.1-release/ubuntu1804/swift-5.0.1-RELEASE/swift-5.0.1-RELEASE-ubuntu18.04.tar.gz.sig
wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import -
gpg --keyserver hkp://pool.sks-keyservers.net --refresh-keys Swift
(cd ~/swiftstuff
 gpg --verify swift-5.0.1-RELEASE-ubuntu18.04.tar.gz.sig
 tar xzf swift-5.0.1-RELEASE-ubuntu18.04.tar.gz
)

