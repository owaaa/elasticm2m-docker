FROM elasticm2m/java:8
MAINTAINER ElasticM2M <elasticm2m@gmail.com>

# Download and unpack the Apache Storm distribution
RUN wget -qO- http://www.us.apache.org/dist/storm/apache-storm-0.9.5/apache-storm-0.9.5.tar.gz | tar xvz -C /opt
RUN ln -s /opt/apache-storm-0.9.5 /opt/storm

WORKDIR /opt/storm
ENV STORM_HOME /opt/storm

VOLUME ["/var/log/storm"]

COPY storm.yaml $STORM_HOME/conf/storm.yaml
COPY cluster.xml $STORM_HOME/logback/cluster.xml
COPY configure-nimbus.sh /usr/bin/configure-nimbus.sh
COPY configure-zookeeper.sh /usr/bin/configure-zookeeper.sh
COPY configure-stormlocal.sh /usr/bin/configure-stormlocal.sh
COPY configure-childopts.sh /usr/bin/configure-childopts.sh