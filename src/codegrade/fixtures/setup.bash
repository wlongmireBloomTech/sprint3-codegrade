#!/bin/bash
set -euo pipefail
shopt -s extglob

rm -rf "$STUDENT/client/src/codegrade" || true
mkdir "$STUDENT/client/src/codegrade"
mv "$FIXTURES/package.json" "$STUDENT/client"
mv "$FIXTURES/tests.test.js" "$STUDENT/client/src/codegrade"
mv "$FIXTURES/{jest.config.js, package.json}" "$STUDENT/client"