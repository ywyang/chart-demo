#!/usr/bin/env bash

set -e
set -x

export REGISTRY=10.11.0.6:5000

docker pull tomcat:6
docker tag tomcat:6 ${REGISTRY}/tomcat:6
docker push ${REGISTRY}/tomcat:6

docker pull tomcat:7
docker tag tomcat:6 ${REGISTRY}/tomcat:7
docker push ${REGISTRY}/tomcat:7

docker pull tomcat:8
docker tag tomcat:6 ${REGISTRY}/tomcat:8
docker push ${REGISTRY}/tomcat:8

docker pull ibmcom/websphere-traditional
docker tag ibmcom/websphere-traditional ${REGISTRY}/ibmcom-websphere-traditional
docker push ${REGISTRY}/ibmcom-websphere-traditional

docker pull rabbitmq:management
docker tag rabbitmq:management ${REGISTRY}/rabbitmq:management
docker push ${REGISTRY}/rabbitmq:management

docker pull ibmcom/mq
docker tag ibmcom/mq ${REGISTRY}/ibmcom-mq
docker push ${REGISTRY}/ibmcom-mq

docker pull nginx
docker tag nginx ${REGISTRY}/nginx
docker push ${REGISTRY}/nginx

docker pull websphere-liberty
docker tag websphere-liberty ${REGISTRY}/websphere-liberty
docker push ${REGISTRY}/websphere-liberty

docker pull jboss/drools-workbench-showcase
docker tag jboss/drools-workbench-showcase ${REGISTRY}/drools-workbench-showcase
docker push ${REGISTRY}/drools-workbench-showcase

docker pull jboss/jbpm-workbench-showcase
docker tag jboss/jbpm-workbench-showcase ${REGISTRY}/jbpm-workbench-showcase
docker push ${REGISTRY}/jbpm-workbench-showcase

docker pull alexeiled/docker-oracle-xe-11g
docker tag alexeiled/docker-oracle-xe-11g ${REGISTRY}/oracle:11g-xe
docker push ${REGISTRY}/oracle:11g-xe

docker pull ibmcom/db2express-c
docker tag ibmcom/db2express-c ${REGISTRY}/db2express-c
docker push ${REGISTRY}/db2express-c

docker pull registry.aliyuncs.com/acs-sample/zookeeper:3.4.8
docker tag registry.aliyuncs.com/acs-sample/zookeeper:3.4.8 ${REGISTRY}/dubbo:zookeeper
docker push ${REGISTRY}/dubbo:zookeeper

docker pull registry.cn-hangzhou.aliyuncs.com/jingshanlb/dubbo-springboot-producer:latest
docker tag registry.cn-hangzhou.aliyuncs.com/jingshanlb/dubbo-springboot-producer:latest ${REGISTRY}/dubbo:producer
docker push ${REGISTRY}/dubbo:producer

docker pull registry.cn-hangzhou.aliyuncs.com/jingshanlb/dubbo-springboot-consumer:latest
docker tag registry.cn-hangzhou.aliyuncs.com/jingshanlb/dubbo-springboot-consumer:latest ${REGISTRY}/dubbo:consumer
docker push ${REGISTRY}/dubbo:consumer