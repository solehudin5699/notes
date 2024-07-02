# Reverse Proxy

## Config Nginx Reverse Proxy

```bash title="Run in terminal" linenums="1"
cd /etc/nginx/sites-available
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/my-website.id.conf
```

Edit `my-website.id.conf` file

```nginx.conf title="my-website.id.conf" linenums="1"
upstream my-website {
   server 127.0.0.1:9000;
}

server {
	server_name my-website.id;
	listen       80;
	listen  [::]:80;

   location / {
      proxy_set_header Host $http_host;
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Proto $scheme;

      proxy_connect_timeout 300;

      proxy_pass my-website;
   }

}
```

```bash linenums="1" title="Run in terminal"
sudo nginx -t # test configuration nginx
sudo ln -s /etc/nginx/sites-available/my-website.id.conf /etc/nginx/sites-enabled/ # create a symlink to enable config
sudo service nginx restart # restart nginx
```

## Pointing Domain to VPS + Cloudflare

Do the same as this steps [here](/dev/vps-setup/#pointing-domain-to-vps-cloudflare).
