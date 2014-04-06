FROM skarllot/centos:6.5
MAINTAINER skarllot@gmail.com

# Adds MySQL repository
RUN rpm -ivh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm

# Pinned to 5.6.17 version to ensure a more consistent image between builds
RUN yum clean all
RUN yum install -y mysql-community-server-5.6.17-4.el6 && \
	yum clean all --releasever=6 && \
	yum clean all --releasever=6.5

ADD assets/ /root/config/

EXPOSE 3306

USER mysql
ENTRYPOINT ["/root/config/init"]
CMD ["start"]

