FROM centos

USER root

RUN yum  update -y

RUN yum install nginx -y

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
