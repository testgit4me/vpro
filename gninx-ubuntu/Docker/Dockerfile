FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install nginx wget unzip -y
WORKDIR /opt
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip 
COPY templatemo_582_tale_seo_agency/* /var/www/html/
# RUN cp -r templatemo_582_tale_seo_agency/* /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]





