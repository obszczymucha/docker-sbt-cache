FROM alpine
RUN apk add --no-cache bash
RUN mkdir /root/.sbt
VOLUME ["/root/.sbt"]
RUN mkdir /root/.ivy2
VOLUME ["/root/.ivy2"]
RUN mkdir /root/.activator
VOLUME ["/root/.activator"]
WORKDIR /root
ENTRYPOINT ["/bin/bash"]
