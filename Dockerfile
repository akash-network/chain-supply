FROM ubuntu:22.04

LABEL org.opencontainers.image.source https://github.com/akash-network/chain-supply

EXPOSE 8080

RUN apt-get update && \
    apt-get install -y ca-certificates && \
    update-ca-certificates

ADD chain-supply chain-supply

ENTRYPOINT ["/chain-supply"]

CMD ["server"]
