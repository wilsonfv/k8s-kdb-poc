FROM alpine:latest

COPY daemonset.sh /etc
RUN chmod +x /etc/daemonset.sh

CMD ["/bin/sh", "-c", "/etc/daemonset.sh; /bin/sh"]