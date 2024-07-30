# 使用官方 Node.js 镜像作为基础镜像
FROM node:14
# 指定工作目录
WORKDIR /app
# 复制文件
COPY package*.json ./
# 安装依赖
RUN npm install
# 复制项目文件到容器中
COPY aware.js ./
COPY data.json ./
# 暴露应用运行的端口
EXPOSE 80
# 命令行启动应用
CMD ["node", "aware.js"]