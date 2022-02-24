FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y gnupg apt-transport-https wget software-properties-common htop
RUN wget -q https://xpra.org/gpg.asc -O- | apt-key add -
RUN add-apt-repository "deb https://xpra.org/ bionic main"
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y xpra
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb -y
RUN mkdir extentions
COPY start.sh /
COPY install-chrome.sh /
RUN sh install-chrome.sh
RUN chmod 777 start.sh
EXPOSE 10000
CMD xpra start --start="bash start.sh" --start=xterm --bind-tcp=0.0.0.0:10000 --html=on &&tail -f /dev/null
