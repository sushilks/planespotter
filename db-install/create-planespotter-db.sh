#!/bin/bash
set -x

export MYSQL_ROOT_PASSWORD=planspotter-sql
cd /
pwd
#/usr/local/bin/docker-entrypoint.sh mysqld &
mysqld -uroot &
sleep 5
cd ~/planespotter/db-install/
#wget http://registry.faa.gov/database/ReleasableAircraft.zip
unzip ReleasableAircraft.zip
ps -eaf
#rm ReleasableAircraft.zip DEALER.txt DEREG.txt DOCINDEX.txt ENGINE.txt RESERVED.txt
rm DEALER.txt DEREG.txt DOCINDEX.txt ENGINE.txt RESERVED.txt
mysql --user=root --password=${MYSQL_ROOT_PASSWORD} < create-planespotter-db.sql
rm MASTER.txt ACFTREF.txt
#killall -9 mysqld
