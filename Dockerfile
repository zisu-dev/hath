FROM alpine as builder
RUN apk update \
  && apk add wget unzip \
  && wget https://repo.e-hentai.org/hath/HentaiAtHome_1.6.1.zip \
  && unzip HentaiAtHome_1.6.1.zip

FROM openjdk:17-alpine
LABEL maintainer="thezzisu <thezzisu@gmail.com>"
RUN mkdir -p /hath \
  && mkdir -p /hath/data
WORKDIR /hath
COPY --from=builder HentaiAtHome.jar HentaiAtHome.jar
COPY start.sh start.sh
RUN chmod +x start.sh
CMD [ "/hath/start.sh" ]
VOLUME [ "/hath/data" ]
VOLUME [ "/hath/download" ]
