FROM alpine
MAINTAINER ByS Control "info@bys-control.com.ar"

ARG tincversion=1.1pre16

RUN apk add --no-cache readline-dev zlib-dev lzo-dev libressl-dev linux-headers gcc g++ make ncurses-dev libpcap-dev readline zlib lzo libpcap supervisor && \
  wget http://www.tinc-vpn.org/packages/tinc-${tincversion}.tar.gz && \
  tar xzvf tinc-${tincversion}.tar.gz && \
  cd tinc-${tincversion} && \
  ./configure --prefix=/usr --enable-jumbograms --enable-tunemu --sysconfdir=/etc --localstatedir=/var && \
  make && make install src && \
  cd ../ && \
  rm -rfv tinc-${tincversion} tinc-${tincversion}.tar.gz && apk del --no-cache --purge readline-dev zlib-dev lzo-dev libressl-dev linux-headers gcc g++ make ncurses-dev libpcap-dev libc-utils

ADD supervisord.conf /etc/supervisord.conf
ADD scripts/ /root/scripts

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT [ "/usr/bin/supervisord" ]
