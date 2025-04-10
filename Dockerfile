FROM node:18-alpine

WORKDIR /app

# 拷贝构建好的代码和命令入口
COPY dist/ dist/
COPY bin/ bin/
COPY package.json .

CMD ["node", "./bin/hexo"]
