FROM alpine

RUN apk update && apk add apache-ant openjdk8 git
RUN git clone https://github.com/enasequence/cramtools.git
WORKDIR cramtools
RUN ant -f build/build.xml runnable

ENTRYPOINT ["java", "-jar", "/cramtools/cramtools-3.0.jar"]
