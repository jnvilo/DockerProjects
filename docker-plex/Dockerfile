FROM centos/systemd

#This is systemd and this you should run the default /bin/entrypoint.sh which 
#starts up systemd and init. 
#Services that you launch within the service should be setup using systemd 
COPY plex_media.repo /etc/yum.repos.d/plex_media.repo
RUN yum -y install plexmediaserver







CMD ["/usr/bin/init"]
