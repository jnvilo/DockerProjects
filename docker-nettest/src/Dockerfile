FROM harbor.lnxsystems.com/library/python

RUN pip3 install django
COPY djproj /opt/djproj
COPY entrypoint.sh /bin/entrypoint.sh 
RUN chmod 755 /bin/entrypoint.sh  

EXPOSE 8001
STOPSIGNAL SIGQUIT
CMD ["/bin/entrypoint.sh"]
