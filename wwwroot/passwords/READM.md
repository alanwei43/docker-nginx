存放 Basic HTTP Authentication 账号密码信息,

增加用户: `./add-user.sh default.htpasswd username`, 第一个参数是存储账号密码的文件, 第二个是用户名.

配置示例: 
```nginx.conf
server {
    ...
    auth_basic           "Administrator’s Area";
    auth_basic_user_file /wwwroot/passwords/default.htpasswd;

    location /public/ {
        auth_basic off;
    }
}
```

参考: 
* [How to Configure Basic HTTP Authentication in Nginx](https://www.tecmint.com/setup-nginx-basic-http-authentication/)
* [Restricting Access with HTTP Basic Authentication](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/)