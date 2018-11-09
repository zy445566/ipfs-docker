#!/bin/sh
if [ $# != 1 ] ; then
    echo 'run as: sh dev.sh build or sh dev.sh run'
    exit
fi
nameTag="ipfs:v1"
case $1 in
    "build")
        docker build -t $nameTag .
    ;;
    "run")
        docker run $nameTag
    ;;
    *) 
        echo 'not support action'
    ;;
esac