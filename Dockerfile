# https://github.com/zy445566/ipfs-docker
FROM centos

ADD root/ /root

RUN cd /root/go-ipfs/ && sh install.sh

RUN chmod 755 /root/entrypoint.sh

EXPOSE 4001 5001 8080

WORKDIR /root

ENTRYPOINT ["/root/entrypoint.sh"]
