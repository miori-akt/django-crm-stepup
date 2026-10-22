#!/usr/bin/env bash
# エラーが起きたら即停⽌する設定
set -o errexit

# 1. ライブラリのインストール
pip install -r requirements.txt

# 2. 静的ファイルの収集 (CSS等を staticfiles フォルダに集める)
python manage.py collectstatic --no-input

# 3. データベースのマイグレーション (本番DBにテーブル作成)
python manage.py migrate