#FROM registry.access.redhat.com/ubi7/ubi
#USER root
#LABEL maintainer="illusive_man"
#Update image
#RUN yum update -y && yum upgrade -y
#RUN yum install wget -y
#RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#RUN yum install initscripts -y 
#RUN yum install java-1.8.0-openjdk-devel -y
#RUN yum install java-1.8.0-openjdk -y
#RUN yum install jenkins -y
#EXPOSE 8080
#CMD /etc/init.d/jenkins start && tail -f /dev/null
#ENTRYPOINT ["/etc/init.d/jenkins", "start"]

FROM registry.access.redhat.com/ubi7/ubi
RUN yum install wget initscripts java-1.8.0-openjdk-devel -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo && rpm --import https://pkg.jenkins.io/redhat-stabl
e/jenkins.io.key
RUN yum install jenkins -y
EXPOSE 8080
CMD /etc/init.d/jenkins start && tail -f /dev/null
~



