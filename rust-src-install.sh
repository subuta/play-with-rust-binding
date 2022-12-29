#!/bin/bash

# [question - how to get stdlib sources for intellij? · Issue #18 · asdf-community/asdf-rust](https://github.com/asdf-community/asdf-rust/issues/18#issuecomment-1325272572)
pushd $(rustc --print sysroot)
mkdir -p lib/rustlib/src
wget https://github.com/rust-lang/rust/archive/refs/tags/$(basename $(pwd)).tar.gz -O lib/rustlib/src/archive.tar.gz
cd lib/rustlib/src
tar vxzf archive.tar.gz
rm -f archive.tar.gz
mv rust-* rust
popd