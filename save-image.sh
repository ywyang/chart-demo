#!/usr/bin/env bash

set -e
set -x

export REGISTRY=10.11.0.6:5000

docker save ${REGISTRY}/dubbo:zookeeper | gzip -c > dubbo-zookeeper.tgz
docker save ${REGISTRY}/dubbo:producer | gzip -c > dubbo-producer.tgz
docker save ${REGISTRY}/dubbo:consumer | gzip -c > dubbo-consumer.tgz
docker save ${REGISTRY}/tomcat:6 | gzip -c > tomcat-6.tgz
docker save ${REGISTRY}/tomcat:7 | gzip -c > tomcat-7.tgz
docker save ${REGISTRY}/tomcat:8 | gzip -c > tomcat-8.tgz
docker save  ${REGISTRY}/ibmcom-websphere-traditional | gzip -c >  ibmcom-websphere-traditional.tgz
docker save  ${REGISTRY}/rabbitmq:management | gzip -c >  rabbitmq-management.tgz
docker save  ${REGISTRY}/ibmcom-mq | gzip -c >  ibmcom-mq.tgz
docker save  ${REGISTRY}/nginx | gzip -c >  nginx.tgz
docker save  ${REGISTRY}/websphere-liberty | gzip -c >  websphere-liberty.tgz
docker save  ${REGISTRY}/drools-workbench-showcase | gzip -c >  drools-workbench-showcase.tgz
docker save  ${REGISTRY}/jbpm-workbench-showcase | gzip -c >  jbpm-workbench-showcase.tgz
# docker save  ${REGISTRY}/oracle:12.2.0.1 | gzip -c >  oracle-12.2.0.1.tgz
# docker save  ${REGISTRY}/oracle:12.2.0.1-ee | gzip -c >  oracle-12.2.0.1-ee.tgz
# docker save  ${REGISTRY}/oracle:12.2.0.1-se2 | gzip -c >  oracle-12.2.0.1-se2.tgz
# docker save  ${REGISTRY}/oracle:12.1.0.2-ee | gzip -c >  oracle-12.1.0.2-ee.tgz
docker save  ${REGISTRY}/oracle:11g-xe | gzip -c >  oracle-11g-xe.tgz
docker save  ${REGISTRY}/db2express-c | gzip -c >  db2express-c.tgz
