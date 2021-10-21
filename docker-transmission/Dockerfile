FROM rockylinux/rockylinux


COPY setup.sh /tmp/setup.sh
COPY entrypoint.sh /bin/entrypoint.sh
RUN dnf -y install epel-release && \
	dnf -y install transmission-cli transmission-common transmission-daemon  && \
	chmod 755 /bin/entrypoint.sh  && \
 	mkdir -p /Downloads/Completed && \
	mkdir -p /Downloads/Incomplete
COPY settings.json /root/.config/transmission-daemon/settings.json


EXPOSE 9091


CMD ["/bin/entrypoint.sh"]
