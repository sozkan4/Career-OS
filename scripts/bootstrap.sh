#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENV_FILE="$ROOT_DIR/.env"
ENV_EXAMPLE="$ROOT_DIR/.env.example"

if [ ! -f "$ENV_EXAMPLE" ]; then
  echo "Missing .env.example"
  exit 1
fi

if [ -f "$ENV_FILE" ]; then
  echo ".env already exists"
else
  cp "$ENV_EXAMPLE" "$ENV_FILE"
  echo "Created .env from .env.example"
fi

echo "Career OS is ready for customization."
echo "Next: open README.md and docs/customization.md."
