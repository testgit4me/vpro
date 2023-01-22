FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install wget nginx unzip -y
WORKDIR /opt
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip

FROM ubuntu:20.4
RUN apt update && apt install nginx -y

COPY --from=BUILD_IMAGE /opt/templatemo_582_tale_seo_agency/* /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


