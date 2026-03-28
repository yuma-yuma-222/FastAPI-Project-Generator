# FastAPI Project Generator
FastAPIを使うときにディレクトリを作るのが面倒なので
テンプレートとしてこのシェルスクリプトを作成しました。

## Features
- ディレクトリ, ファイルなど自動作成
- .env, venv, .gitignoreまで作成
- FastAPIの環境セットアップ（FastAPI, Uvicorn）


## Project Structure
app/
├── api/
│   └── routes.py
├── core/
│   └── config.py
├── models/
├── __init__.py
└── main.py

.env
requirements.txt
venv/

## Usage
``` bash
chmod +x main.sh
./main.sh
```
