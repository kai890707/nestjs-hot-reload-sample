FROM node:18

# 設置工作目錄
WORKDIR /usr/src/app

# 複製 package.json 和 package-lock.json
COPY package.json package-lock.json ./

# 安裝應用依賴
RUN npm install

# 安裝 nodemon 全局依賴
RUN npm install -g nodemon

# 複製應用代碼
COPY . .

# 開放應用執行的端口
EXPOSE 3000

# 使用 nodemon 啟動應用
CMD ["npm", "run", "start:dev"]
