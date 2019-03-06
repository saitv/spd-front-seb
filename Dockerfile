FROM node:8.15.1-jessie-slim

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome.list 
RUN apt-get update 
RUN apt-get -y install google-chrome-stable 
RUN apt-get install -y default-jdk 
RUN rm -rf /var/lib/apt/lists/ */var/cache/apt/*
