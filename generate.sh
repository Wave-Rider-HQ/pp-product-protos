#!/usr/bin/env bash
set -euo pipefail

BUF_VERSION="1.66.0"

installed=$(buf --version 2>/dev/null || echo "")
if [[ "$installed" != "$BUF_VERSION" ]]; then
  echo "buf ${BUF_VERSION} required (found: '${installed}')"
  echo "Install: https://github.com/bufbuild/buf/releases/tag/v${BUF_VERSION}"
  exit 1
fi

buf generate
