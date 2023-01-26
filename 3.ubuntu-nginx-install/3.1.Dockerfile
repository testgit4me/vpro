FROM nginx AS BUILD_IMAGE
WORKDIR /opt
RUN apt update && apt install wget unzip -y
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip

FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
VOLUME /usr/share/nginx/html
COPY --from=BUILD_IMAGE /opt/templatemo_582_tale_seo_agency ./
EXPOSE 80