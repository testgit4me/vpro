FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install wget nginx unzip -y
WORKDIR /opt
RUN wget https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip && unzip -o 2119_gymso_fitness.zip

FROM ubuntu:20.04
RUN apt update && apt install nginx -y

COPY --from=BUILD_IMAGE /opt/2119_gymso_fitness/* /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


