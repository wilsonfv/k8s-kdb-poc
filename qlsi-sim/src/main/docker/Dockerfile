FROM gcr.io/arculuse-poc-uat-backoffice/kx-centos-3.6t

COPY sim.q .
COPY schema.q .

CMD ["q","sim.q", "-p", "8080"]
