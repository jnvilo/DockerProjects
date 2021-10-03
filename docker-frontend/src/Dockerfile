FROM harbor.lnxsystems.com/library/nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod 755 /bin/entrypoint.sh
EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["/bin/entrypoint.sh"]
