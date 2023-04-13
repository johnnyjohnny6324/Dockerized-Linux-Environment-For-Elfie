FROM ubuntu:22.04

RUN apt-get update && apt-get install -y xinetd
RUN apt-get -y install hexedit

RUN useradd -m elfie

ADD elfie /home/elfie
ADD elfie.conf /etc/xinetd.d/elfie

WORKDIR /home/elfie

EXPOSE 1600

CMD ["xinetd", "-dontfork"]

