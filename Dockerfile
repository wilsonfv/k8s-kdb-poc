
FROM ubuntu:14.04

# Set env variables for q
ENV QHOME /q
ENV PATH ${PATH}:${QHOME}/l32/

COPY qbin/linuxx86.zip .

# Install rlwrap and kdb+
RUN \
	apt-get update && \
	apt-get install -y curl rlwrap unzip lib32z1 lib32ncurses5 lib32bz2-1.0 && \
	unzip linuxx86.zip && \
	rm linuxx86.zip

CMD ["./q/l32/q", "-p", "8080"]
