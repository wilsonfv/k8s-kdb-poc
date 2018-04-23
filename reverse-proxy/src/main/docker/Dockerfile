FROM gcr.io/kdbtest1-192403/nginx
RUN apt-get -qq update \
  && apt-get install -y net-tools \
  && apt-get install -y procps \
  && apt-get install -y curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*