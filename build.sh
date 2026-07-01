#!/usr/bin/env bash
# Пересборка Redoc-документа из openapi.yaml.
# Флаг hideDownloadButton убирает кнопку «Download OpenAPI specification».
set -e
cd "$(dirname "$0")"
npx --yes @redocly/cli@latest build-docs openapi.yaml -o index.html --theme.openapi.hideDownloadButton=true
echo "OK: index.html пересобран"
