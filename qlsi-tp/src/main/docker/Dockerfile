FROM gcr.io/arculuse-poc-uat-backoffice/kx-tick-centos-3.6t:latest

COPY *.q tick/

CMD ["q","tick.q","sym","/tp","-p","8082"]
