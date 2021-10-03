FROM harbor.lnxsystems.com/library/python

COPY djproj /opt/djproj
COPY entrypoint.sh /bin/entrypoint.sh 
RUN chmod 755 /bin/entrypoint.sh && pip3 install django

EXPOSE 8000
STOPSIGNAL SIGQUIT
CMD ["/bin/entrypoint.sh"]
