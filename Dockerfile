ARG PDKIMAGE=puppet/pdk:latest

FROM $PDKIMAGE

RUN apt-get update && \
    apt-get install -y make gcc && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
