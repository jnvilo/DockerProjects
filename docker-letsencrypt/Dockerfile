FROM rockylinux/rockylinux:latest


COPY nginx.repo /etc/yum.repos.d
RUN  	yum -y install 'dnf-command(config-manager)' && \
	yum -y install epel-release 
	
