ARG BASE_OS=ubuntu:18.04
FROM $BASE_OS as pfcptool
workdir /pfcptool
COPY .  ./
EXPOSE 8805/udp
RUN ./build-deps.sh
RUN echo 'alias python="python3"' >> ~/.bashrc
