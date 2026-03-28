#!/bin/bash

# エラー時停止
set -e

# プロジェクト構造の作成
echo "Creating project structure..."
mkdir -p app/{api,models,core}
touch \
    app/main.py \
    app/api/routes.py \
    app/core/config.py \
    .env \
    requirements.txt

touch \
    app/__init__.py \
    app/api/__init__.py \
    app/core/__init__.py \
    app/models/__init__.py

# .gitignoreの作成
echo "Creating .gitignore..."
cat << EOF > .gitignore
# Python
__pycache__/
*.py[cod]
*.pyo
*.pyd
.Python
*.egg-info/
dist/
build/

# 仮想環境
venv/
.venv/
env/

# 環境変数
.env
.env.*

# DB
*.db
*.sqlite3

# IDE
.vscode/
.idea/
*.swp

# OS
.DS_Store
Thumbs.db

# テスト・カバレッジ
.pytest_cache/
.coverage
htmlcov/

# ログ
*.log
EOF

# venv作成
echo "Criating venv..."
if [ -d "venv" ]; then
    echo "Virtual environment already exists. Skipping creation."
else
    python3 -m venv venv
    echo "venv created successfully."
fi

# 仮想環境のアクティベート
echo "Activating virtual environment..."
source venv/bin/activate

# 依存関係のインストール
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
pip install fastapi uvicorn



echo "All done! Let's start!"
