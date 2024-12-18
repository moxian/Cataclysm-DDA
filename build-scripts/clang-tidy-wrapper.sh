#!/bin/bash

set -x
set -eu
set -o pipefail

plugin=build/tools/clang-tidy-plugin/libCataAnalyzerPlugin.so

clang-tidy --version
clang-tidy --list-checks
clang-tidy --dump-config
clang-tidy --enable-check-profile --store-check-profile=clang-tidy-trace "$@"

# if [ -f "$plugin" ]
# then
#     LD_PRELOAD=$plugin "$CATA_CLANG_TIDY" --enable-check-profile --store-check-profile=clang-tidy-trace "$@"
# else
#     "$CATA_CLANG_TIDY" "$@"
# fi
