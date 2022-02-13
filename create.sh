docker run --name web-proxy \
    --hostname webproxy \
    -d \
    -p 80:80 \
    -p 443:443 \
    --mount type=bind,source="$(pwd)/conf.d",target=/etc/nginx/conf.d/ \
    --mount type=bind,source="$(pwd)/wwwroot",target=/wwwroot \
    --mount type=bind,source="$(pwd)/nginx.conf",target=/etc/nginx.conf \
    --add-host=host.docker.internal:host-gateway \
    --restart=unless-stopped \
    -v $PWD:/app \
    nginx:1.20.2-alpine