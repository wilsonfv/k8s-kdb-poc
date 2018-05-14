FROM gcr.io/kdbtest1-192403/nginx

COPY nginx.conf /etc/nginx/
COPY nginx-selfsigned.crt /etc/ssl/certs/
COPY nginx-selfsigned.key /etc/ssl/private/

RUN apt-get -qq update \
    && apt-get install -y net-tools \
    && apt-get install -y procps \
    && apt-get install -y curl \
    && apt-get install -y less \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && unlink /var/log/nginx/error.log; touch /var/log/nginx/error.log \
    && unlink /var/log/nginx/access.log; touch /var/log/nginx/access.log