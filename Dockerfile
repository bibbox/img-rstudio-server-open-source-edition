FROM ubuntu:22.04

# update indices
RUN apt-get update 
# install R
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y r-base=4.1.2-1ubuntu2

RUN apt-get install -y gdebi-core wget libssl-dev
# download Rstudio server
RUN wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2022.07.2-576-amd64.deb -O rstudio-server.deb

#ADD rstudio-server-2022.07.2-576-amd64.deb /rstudio-server.deb

ADD scripts /scripts

RUN chmod a+x /scripts/*.sh

EXPOSE 8787

ENTRYPOINT ["/scripts/entrypoint.sh"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
