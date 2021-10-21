FROM harbor.lnxsystems.com/library/systemd:latest

COPY rocky8_repo_sync1.sh /bin/rocky8_repo_sync1.sh
RUN 	yum -y install cronie && \ 

RUN crontab -l | { cat; echo "* *  * * * /usr/bin/date >> /tmp/date.txt"; } | crontab -

#This is systemd and this you should run the default /bin/entrypoint.sh which 
#starts up systemd and init. 
#Services that you launch within the service should be setup using systemd 

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod 775 /bin/entrypoint.sh

CMD ["/bin/entrypoint.sh"]


