FROM harbor.lnxsystems.com/library/systemd:latest

COPY rocky8_repo_sync1.sh /bin/rocky8_repo_sync1.sh
RUN 	yum -y install cronie && \ 
	chmod 755 /bin/rocky8_repo_sync1.sh && \ 
	mkdir -p /data/repos/rocky 

RUN crontab -l | { cat; echo "25 02 * * * /bin/rocky8_repo_sync1.sh"; } | crontab -
RUN crontab -l | { cat; echo "* *  * * * /usr/bin/date >> /tmp/date.txt"; } | crontab -


#This is systemd and this you should run the default /bin/init-systemd.sh script 
#and anything else 
COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod 775 /bin/entrypoint.sh

CMD ["/bin/entrypoint.sh"]


