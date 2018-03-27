FROM debian:stable
RUN apt-get update
RUN apt-get install -y openssl
RUN apt-get install -y wget
RUN apt-get install -y xz-utils
WORKDIR /tmp
RUN wget -qO- "https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz" | tar xJf -
RUN bash ./sfdx/install
