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

```
## Usage
``` bash
chmod +x main.sh
./main.sh
```
