
FROM generalaardvark/docker-picore

MAINTAINER Pie <generalaardvark@piesweb.co.uk>

RUN tce-load -wic python3.5 \
	&& python -m ensurepip -U
	&& cd /usr/local/bin \
	&& sudo ln -s python3.5 python \
	&& sudo ln -s pydoc3.5 pydoc \
	&& sudo ln -s pyvenv-3.5 pyvenv \
	&& sudo ln -s pip3 pip

CMD ["/bin/sh"]
