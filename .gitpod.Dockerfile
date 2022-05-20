FROM gitpod/workspace-full:latest

RUN sudo apt-get update 
RUN sudo apt-get -y install openjdk-11-jdk
RUN wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz
RUN mkdir /home/gitpod/sfdx
RUN tar xJf sfdx-linux-x64.tar.xz -C /home/gitpod/sfdx --strip-components 1
ENV PATH=$PATH:/home/gitpod/sfdx/bin