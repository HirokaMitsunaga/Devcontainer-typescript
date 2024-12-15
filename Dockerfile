FROM node:18

WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# npmキャッシュをクリア
RUN npm cache clean --force

# RUN apt-get update && apt-get install -y libstdc++6 && apt-get clean

# 依存関係のインストール
RUN npm install

# ソースコードをコピー
COPY . .

