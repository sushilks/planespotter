FROM mysql
RUN mkdir -p /root/planespotter/db-install/
RUN apt-get update
RUN apt-get install -y wget unzip
RUN mkdir -p /opt/db-install && chmod 777 /opt/db-install
RUN cd /opt/db-install/ && wget http://registry.faa.gov/database/ReleasableAircraft.zip
RUN cd /opt/db-install/ && unzip ReleasableAircraft.zip
RUN cd /opt/db-install/ && rm DEALER.txt DEREG.txt DOCINDEX.txt ENGINE.txt RESERVED.txt
RUN echo 'copying script 1'
#COPY ./create-planespotter-db.sql /root/planespotter/db-install/create-planespotter-db.sql
COPY ./create-planespotter-db.sql /docker-entrypoint-initdb.d/create-planespotter-db.sql
#COPY ./create-planespotter-db.sh /root/planespotter/db-install/create-planespotter-db.sh
#RUN ls -l /root/planespotter/db-install/
#RUN chmod +x /root/planespotter/db-install/create-planespotter-db.sh
#RUN cd /root/planespotter/db-install/ && ./create-planespotter-db.sh
