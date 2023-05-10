FROM eclipse-temurin:17

LABEL maintainer="Matheus Souza <mfbsouza.it@gmail.com>"

# create mc user
RUN useradd -ms /bin/bash mcuser

# start the server
USER mcuser
WORKDIR /home/mcuser/server-data
COPY server.jar .
CMD java -Xmx4G -jar server.jar nogui
