FROM node:12.16-buster-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg python-pip && \
  echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
  apt-get update && \
  apt-get install -y hugin google-cloud-sdk imagemagick && \
  apt-get clean && rm -rf /var/lib/apt/lists/*


