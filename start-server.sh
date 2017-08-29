#!/bin/sh

CWD=`cd $(dirname $0); pwd`

# WILDFLY_DIR="wildfly-8.1.0.Final"
WILDFLY_DIR="wildfly-10.0.0.Final"

# move war.
cd kie-wb-distributions/kie-drools-wb-parent/kie-drools-wb-webapp/target
cp kie-drools-wb-webapp.war ${WILDFLY_DIR}/standalone/deployments/drools-wb.war

# create users.
cd ${WILDFLY_DIR}/bin/
sh add-user.sh -a -u admin -p admin123 -g admin
sh add-user.sh -a -u rest -p rest123 -g rest-all

# start server
sh standalone.sh

cd ${CWD}
