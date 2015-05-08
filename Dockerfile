FROM debian:wheezy

ADD https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /chrome.deb

RUN apt-get update && \
    dpkg -i /chrome.deb || true && \
    apt-get install -yf

ENV DISPLAY $DISPLAY
