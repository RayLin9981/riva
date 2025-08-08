#!/usr/bin/env bash
set -e

# 找到專案根目錄（假設 .env 與 .env.template 在 riva 根目錄）
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# 載入 .env
if [ -f "$ROOT_DIR/.env" ]; then
    set -a
    source "$ROOT_DIR/.env"
    set +a
else
    echo "❌ 找不到 $ROOT_DIR/.env，請先建立並設定 NGC_API_KEY"
    echo "    cp .env.template .env && nano .env"
    exit 1
fi

# 確認 NGC_API_KEY 已設定
if [ -z "$NGC_API_KEY" ]; then
    echo "❌ .env 裡沒有設定 NGC_API_KEY"
    exit 1
fi

