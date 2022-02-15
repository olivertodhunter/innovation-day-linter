from  ubuntu


# Version of this image
LABEL version="7.5.9"

USER root
WORKDIR /root

RUN apt-get update \
 && apt-get install -y  gcc mono-mcs  \
  && apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*
