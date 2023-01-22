FROM ubuntu:20.04 AS BUILD_IMAGE 
RUN apt update && apt install wget nginx unzip -y
WORKDIR /opt
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip
CMD ["nginx", "-g", "daemon off;"]

