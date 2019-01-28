FROM debian:buster-slim

RUN apt-get update && apt-get install -y --no-install-recommends smartmontools && rm -rf /var/lib/apt/lists/*

#DO NOT DO THIS IN PRODUCTION. SAVE FILE LOCALLY, AND ADD.
ADD https://github.com/prometheus/node_exporter/raw/master/text_collector_examples/smartmon.sh /bin/smartmon.sh

RUN chmod +x /bin/smartmon.sh
