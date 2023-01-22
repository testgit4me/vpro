FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install nginx unzip -y
WORKDIR /opt
ADD https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]





