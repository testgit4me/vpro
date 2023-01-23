FROM nginx as BUILD-SEVER
WORKDIR /opt
RUN apt update && apt install wget unzip -y
RUN wget https://templatemo.com/tm-zip-files-2020/templatemo_582_tale_seo_agency.zip && unzip -o templatemo_582_tale_seo_agency.zip