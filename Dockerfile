FROM alpine
RUN apk add --no-cache bash
VOLUME ["/root/.sbt"]
VOLUME ["/root/.ivy2"]
VOLUME ["/root/.activator"]
WORKDIR /root
RUN apk add -U tzdata
RUN cp /usr/share/zoneinfo/Australia/Melbourne /etc/localtime
RUN echo "Australia/Melbourne" > /etc/timezone
RUN apk del tzdata
ENTRYPOINT ["/bin/bash"]
