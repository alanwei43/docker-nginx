docker run --rm -it -v $PWD:/data httpd htpasswd -c /data/$1 $2
