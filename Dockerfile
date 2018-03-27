FROM debian
RUN apt-get update
RUN apt-get install -y openssl
RUN apt-get -y install wget
RUN apt-get install -y xz-utils
WORKDIR /tmp
RUN wget -qO- "https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz" | tar xJf -
RUN bash ./sfdx/install
