FROM amazonlinux:1
WORKDIR /app

RUN yum -y install mysql57 aws-cli

COPY src /app/

RUN chmod +x /app/restore.sh

ENTRYPOINT ["/app/restore.sh"]
