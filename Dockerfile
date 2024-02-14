FROM alpine:3.19

LABEL org.opencontainers.image.title="Python with pandas"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="[Pandas](https://pandas.pydata.org/)"
LABEL org.opencontainers.image.vendor="Nexomis"
LABEL org.opencontainers.image.licenses="Apache-2.0 AND BSD-3-Clause"

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Paris"

RUN apk add --no-cache bash py3-pandas=2.0.3-r0 \
  && rm -rf /var/cache/apk/* /tmp/* /var/tmp/* 

ENTRYPOINT [""]
CMD [""]
