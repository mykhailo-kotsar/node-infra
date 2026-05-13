FROM ubuntu:24.04
RUN apt-get update && apt-get install -y curl	
COPY heartbeat.sh /usr/local/bin/heartbeat.sh
RUN chmod +x /usr/local/bin/heartbeat.sh
CMD ["/usr/local/bin/heartbeat.sh"]
