FROM gcr.io/google-appengine/debian9:latest

RUN apt-get update && apt-get install -y \
    curl \
    privoxy \
    jq \
    && rm -rf /var/lib/apt/lists/* \
    && mv /etc/privoxy/templates /etc/privoxy-templates \
    && rm -rf /etc/privoxy/* \
    && mv /etc/privoxy-templates /etc/privoxy/templates \
    && rm -rf /usr/lib/python2.7
COPY config k8s-api-proxy.sh k8s-only.action k8s-rewrite-external.filter /etc/privoxy/
RUN chmod +x /etc/privoxy/k8s-api-proxy.sh

EXPOSE 8118/tcp
