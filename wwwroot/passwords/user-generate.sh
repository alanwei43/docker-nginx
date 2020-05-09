# ./user-generate.sh username password
docker run --rm -it httpd htpasswd -nb $1 $2
