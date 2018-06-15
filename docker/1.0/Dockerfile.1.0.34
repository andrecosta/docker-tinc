FROM ubuntu:16.04
MAINTAINER ByS Control "info@bys-control.com.ar"

ARG tincversion=1.0.34

# Remove SUID programs
RUN for i in `find / -perm +6000 -type f 2>/dev/null`; do chmod a-s $i; done

RUN apt-get update && \
# build dependencies
apt-get install -y build-essential libncurses5-dev libreadline6-dev libzlcore-dev zlib1g-dev liblzo2-dev libssl-dev && \
# runtime dependencies
apt-get install -y --no-install-recommends iproute2 supervisor curl && \
# get source code
curl http://tinc-vpn.org/packages/tinc-${tincversion}.tar.gz | tar xzC /tmp && \
# compile
cd /tmp/tinc-${tincversion} && ./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var && make && make install && \
# cleanup
apt-get purge --auto-remove -y build-essential libncurses5-dev libreadline6-dev libzlcore-dev zlib1g-dev liblzo2-dev libssl-dev && \
apt-get install -y libc6 liblzo2-2 libncurses5 libreadline6 libssl1.0.0 libtinfo5 zlib1g init-system-helpers && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD scripts/ /root/scripts

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT [ "/usr/bin/supervisord" ]