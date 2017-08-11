FROM debian:latest
ADD ts3.sh /ts3.sh
RUN apt-get update && apt-get install -y wget && useradd -d /teamspeak teamspeak && wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 -O teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && apt-get install bzip2 && tar -xvf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
EXPOSE 9987/udp 10011 30033
RUN ./ts3.sh
