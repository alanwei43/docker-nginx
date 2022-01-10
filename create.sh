docker run --name web-proxy \
    --hostname webproxy \
    -d \
    -p 80:80 \
    -p 443:443 \
    --mount type=bind,source="$(pwd)/conf.d",target=/etc/nginx/conf.d/ \
    --mount type=bind,source="$(pwd)/wwwroot",target=/wwwroot \
    -p 10003:10003 \
    -v $PWD:/app \
    nginx:1.20-alpine
