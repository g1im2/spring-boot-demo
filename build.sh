#!/bin/bash
######################################
#   author: fuxingfu                 #
#   date: 2022/04/07                 #
#   install depend environment       #
#   openjdk-18                       #
#   maven                            #
#   docker                           #
######################################

# build and package project
mvn clean package

# unpack jar package
mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)

# create docker image
docker build -t fxfpro/demo:v0.1 .