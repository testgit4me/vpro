FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install nginx wget unzip -y
WORKDIR /opt
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

FROM ubuntu:20.04 
RUN apt update && apt install nginx -y
WORKDIR /var/www/html
RUN rm -rf ./*
COPY --from=BUILD_IMAGE /opt/templatemo_582_tale_seo_agency ./
COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]