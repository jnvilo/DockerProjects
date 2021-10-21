FROM rockylinux/rockylinux:latest

COPY setup.sh /tmp
RUN /bin/bash /tmp/setup.sh 
COPY init-systemd.sh /bin/
RUN chmod 775 /bin/init-systemd.sh 

#This is systemd and this you should run the default /bin/entrypoint.sh which 
#starts up systemd and init. 
#Services that you launch within the service should be setup using systemd 



CMD ["/bin/init-systemd.sh"]
