FROM python:3.10-slim-bookworm

LABEL org.opencontainers.image.title="Python with pandas"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="[Pandas](https://pandas.pydata.org/)"
LABEL org.opencontainers.image.vendor="Nexomis"
LABEL org.opencontainers.image.licenses="Apache-2.0 AND BSD-3-Clause"

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Paris"

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    python3-pandas=1.5.3+dfsg-2 \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [""]
CMD [""]
