
FROM generalaardvark/docker-picore

MAINTAINER Pie <generalaardvark@piesweb.co.uk>

RUN tce-load -wic python3.5 \
	&& cd /usr/local/bin \
	&& sudo ln -s python3.5 python \
	&& sudo ln -s pydoc3.5 pydoc \
	&& sudo ln -s pyvenv-3.5 pyvenv 

CMD ["/bin/sh"]
