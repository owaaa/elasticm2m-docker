#!/bin/bash

LOGSTASH=${LOGSTASH_HOST:-${LOGSTASH_PORT_9200_TCP_ADDR:-"UNAVAILABLE"}}
sed -i -e "s/%LOGSTASH_HOST%/$LOGSTASH/g" $STREAMFLOW_HOME/conf/streamflow.yml