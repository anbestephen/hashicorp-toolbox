FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y wget \
  && apt-get install -y unzip \
  && rm -rf /var/lib/apt/lists/*

RUN  \
  # Install terraform
  && wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip \
  && unzip terraform_0.11.7_linux_amd64.zip \
  && mv terraform /usr/bin/ \
  # Install packer
  && wget https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_linux_amd64.zip \
  && unzip packer_1.2.4_linux_amd64.zip \
  && mv packer /usr/bin/ \
  # Install vault
  && wget https://releases.hashicorp.com/vault/0.10.2/vault_0.10.2_linux_amd64.zip \
  && unzip vault_0.10.2_linux_amd64.zip \
  && mv packer /usr/bin/ 

RUN echo "hello world"
