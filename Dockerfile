# 使用官方 Nginx 镜像作为运行容器
FROM nginx:alpine

# 删除默认的 Nginx 网站配置
RUN rm -rf /usr/share/nginx/html/*

# 拷贝 Hexo 生成的静态页面到 nginx 目录
COPY public/ /usr/share/nginx/html/

# 可选：拷贝自定义 nginx.conf（如果你有）
# COPY nginx.conf /etc/nginx/nginx.conf

# 设置默认暴露端口
EXPOSE 80

# 启动 nginx（镜像默认已设置，不需写 CMD）
