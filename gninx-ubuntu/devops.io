server {
        listen 95;
        listen [::]:95;

        root /var/www/devops.io;
        index index.html index.htm index.nginx-debian.html;

        server_name devops.io www.devops.io;

        location / {
                try_files $uri $uri/ =404;
        }
}