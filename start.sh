#!/bin/bash

curl -XPUT "http://${ELASTICSEARCH_HOST}:${ELASTICSEARCH_PORT}/_template/filebeat?pretty" -d@/etc/filebeat/filebeat.template.json
/etc/init.d/filebeat start
nginx
