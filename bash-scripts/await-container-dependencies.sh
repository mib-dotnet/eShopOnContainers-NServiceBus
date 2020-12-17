#!/bin/bash

#Dependency check using WHILE
function checkDependencyOthers()
{
  # echo $1
  while true
  do
    STATUS=$(curl -s -o /dev/null -w '%{http_code}' $1);
    # if [ $STATUS -eq 200 ] || [ $? -eq 52 ] 
    # then
    # $? is Exit code, we check Exit code for connections other than HTTP, like TCP, FTP, etc.
    # TODO: Other protocol connectivities(like TCP, FTP, etc) to be checked using proper bash logic/3rd party libs like netcat, etc
    if [ $? -eq 52 ]; then     
      break
    else
      echo "Got $STATUS ..."
    fi
      echo "Sleeping for $1.."
      sleep $2
  done
}

#Dependency check using UNTIL
function checkDependencyHTTP(){
  #TODO: Try parallel URL polling like: (curl --output /dev/null --silent --head rabbitmq:15672) && (curl --output /dev/null --silent --head webmvc)
  #      which actually works in bash cmd prompt from Docker container
  until $(curl --output /dev/null --silent --head $1); 
  do
      echo "Sleeping for $1.."
      sleep $2
  done
}
