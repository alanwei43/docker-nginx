# ./user-add.sh default-passworld-file username password
docker run --rm -it -v $PWD:/data httpd sh -c "cd /data && htpasswd -b $1 $2 $3"
