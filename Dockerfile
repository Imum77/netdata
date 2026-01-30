FROM netdata/netdata

ENV http_proxy=http://10.84.142.62:3128
ENV https_proxy=http://10.84.142.62:3128

COPY ./health_alarm_notify.conf /etc/netdata/health_alarm_notify.conf
COPY ./health.d /etc/netdata/health.d

CMD ["/usr/sbin/netdata", "-D"]
