FROM elasticm2m/storm:0.9
MAINTAINER ElasticM2M <elasticm2m@gmail.com>

EXPOSE 6627

CMD /usr/bin/configure-zookeeper.sh \
    && /usr/bin/configure-nimbus.sh \ 
    && /usr/bin/configure-stormlocal.sh \
    && /usr/bin/configure-childopts.sh \
    && /opt/storm/bin/storm nimbus