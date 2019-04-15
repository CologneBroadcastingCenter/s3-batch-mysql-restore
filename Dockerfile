FROM amazonlinux:1
WORKDIR /app

RUN yum -y update && yum -y install mysql57 aws-cli

RUN yum clean all
RUN rm -rf /var/cache/yum

COPY src /app/

RUN chmod +x /app/restore.sh

ENTRYPOINT ["/app/restore.sh"]
