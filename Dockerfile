FROM ubuntu:trusty
RUN apt-get update
RUN apt-get install -y build-essential nodejs python
COPY . /opt/cjdns
WORKDIR /opt/cjdns
RUN ./do
ENTRYPOINT ["/opt/cjdns/cjdroute"]
