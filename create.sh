docker run --name web-proxy \
    --hostname webproxy \
    -d \
    --mount type=bind,source="$(pwd)/conf.d",target=/etc/nginx/conf.d/ \
    --mount type=bind,source="$(pwd)/wwwroot",target=/wwwroot \
    -p 80:80 \
    -p 443:443 \
    nginx
