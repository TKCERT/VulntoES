#!/bin/bash
# Usage:
# ./prepare-es.sh [<host>:<port>]
#
# Default: localhost:9200

curl -qsk -XPUT -H 'Content-Type: text/json' --data-binary '@ES-vuln.template' ${1:-localhost:9200}/_template/vuln
