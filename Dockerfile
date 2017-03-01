FROM alpine:latest
MAINTAINER David Chidell (dchidell@cisco.com)

COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf
RUN apk --no-cache add syslog-ng

EXPOSE 514
CMD ["syslog-ng","-F"]
