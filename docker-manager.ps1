# 1. 删除错误的文件
rm Dockerfile

# 2. 创建正确的 Dockerfile
echo "FROM nginx:alpine" > Dockerfile
echo "COPY dist /usr/share/nginx/html" >> Dockerfile
echo "EXPOSE 80" >> Dockerfile

# 3. 确认内容
cat Dockerfile

# 4. 构建镜像
docker build -t vue-frontend .

# 5. 运行容器
docker run -d -p 4173:80 --name vue-frontend-app vue-frontend

# 6. 验证
# 浏览器访问 http://localhost:4173