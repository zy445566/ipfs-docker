#!/bin/sh
if [ $# != 1 ] ; then
    echo 'run as: sh dev.sh build or sh dev.sh run'
    exit
fi
name="ipfs"
tag="latest"
case $1 in
    "build")
        docker build -t $name:$tag .
    ;;
    "run")
        docker run --name $name  -p 4001:4001 -p 5001:5001 -p 8080:8080 $name:$tag &
    ;;
    "bash")
        docker exec -it $name bash
    ;;
    "stop")
        docker stop $name
        docker rm $name
    ;;
    *) 
        echo 'not support action'
    ;;
esac