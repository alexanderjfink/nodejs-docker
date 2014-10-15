FROM dockerfile/ubuntu

# Base install of node.js, npm and forever
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs
RUN npm -g update npm
RUN npm install -g forever

# Set the working directory
WORKDIR   /src

# Expose volume
VOLUME /src

CMD ["/bin/bash"]
