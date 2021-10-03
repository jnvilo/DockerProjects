FROM rockylinux/rockylinux:latest


COPY nginx.repo /etc/yum.repos.d
RUN  	yum -y install 'dnf-command(config-manager)' && \
	yum config-manager --enable nginx-mainline && \
	yum -y install nginx
