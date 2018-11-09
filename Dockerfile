# https://github.com/zy445566/ipfs-docker
FROM centos

ADD root/ /root

RUN cd /root/go-ipfs/ && sh install.sh

EXPOSE 4001 5001 8080

WORKDIR /root

ENTRYPOINT ["/root/entrypoint.sh"]
