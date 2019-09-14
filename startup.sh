docker run --name web-proxy -d --mount type=bind,source="$(pwd)/conf.d",target=/etc/nginx/conf.d/ -p 80:80 -p 443:443 nginx
