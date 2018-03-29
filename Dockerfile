FROM debian:stable
RUN apt-get update
RUN apt-get install -y openssl
RUN apt-get install -y wget
RUN apt-get install -y xz-utils
RUN apt-get install -y xxd
RUN apt-get install -y openjdk-8-jre-headless
RUN apt-get install -y xvfb
RUN apt-get install -y firefox-esr
RUN apt-get install -y git
WORKDIR /tmp
RUN wget -qO- "https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz" | tar xJf -
RUN bash ./sfdx/install
