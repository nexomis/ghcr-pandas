FROM ubuntu:noble-20240904.1

LABEL org.opencontainers.image.title="Python with pandas"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="[Pandas](https://pandas.pydata.org/)"
LABEL org.opencontainers.image.vendor="Nexomis"
LABEL org.opencontainers.image.licenses="Apache-2.0 AND BSD-3-Clause"

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Paris"

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get -y install --no-install-recommends \
  python3 \
  python3-pandas=2.1.4+dfsg-7 \
  bash \
  wget \
  && rm -rf /var/lib/apt/lists/*

