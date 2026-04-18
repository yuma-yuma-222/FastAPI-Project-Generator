# FastAPI Project Generator
これはFastAPIのディレクトリ構造と必須ファイルを自動で作成するShellScriptです．


FastAPIを使うときにディレクトリを作るのが面倒なので
テンプレートとしてこのシェルスクリプトを作成しました．

## Features
- ディレクトリ, ファイルなど自動作成
- .env, venv, .gitignoreまで作成
- FastAPIの環境セットアップ（FastAPI, Uvicorn）


## Project Structure
生成されるディレクトリ・ファイルを以下に示す．
```
├── app
│   ├── __init__.py
│   ├── api
│   │   ├── __init__.py
│   │   └── routes.py
│   ├── core
│   │   ├── __init__.py
│   │   └── config.py
│   ├── db
│   │   └── database.py
│   ├── main.py
│   ├── models
│   │   ├── __init__.py
│   │   └── schemas.py
│   └── services
│       └── __init__.py
├── main.sh
├── README.md
├── requirements.txt
├── venv
└── .env


```
## Usage
``` bash
chmod +x main.sh
./main.sh
```
