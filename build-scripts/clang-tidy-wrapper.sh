#!/bin/bash

set -x
set -eu
set -o pipefail

plugin=build/tools/clang-tidy-plugin/libCataAnalyzerPlugin.so

which  clang-tidy
sleep 2
clang-tidy --version
sleep 2
clang-tidy --list-checks
sleep 2
clang-tidy --dump-config
sleep 2
clang-tidy --enable-check-profile --store-check-profile=clang-tidy-trace "$@"

# if [ -f "$plugin" ]
# then
#     LD_PRELOAD=$plugin "$CATA_CLANG_TIDY" --enable-check-profile --store-check-profile=clang-tidy-trace "$@"
# else
#     "$CATA_CLANG_TIDY" "$@"
# fi
