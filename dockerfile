FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY index.js .

ENTRYPOINT [ "node","index.js"]
# server {
#         listen 5000 ;

#         server_name jinytree.shop;

#         allow all;

#         location / {
#                 proxy_pass http://127.0.0.1:4000;
#                 proxy_redirect     off;
#                 proxy_set_header   Host $host;
#                 proxy_set_header   X-Real-IP $remote_addr;
#                 proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
#         }
# }