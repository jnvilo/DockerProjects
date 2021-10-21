FROM harbor.lab.demostack.xyz/library/nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d
COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod 755 /bin/entrypoint.sh
EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

CMD ["/bin/entrypoint.sh"]
