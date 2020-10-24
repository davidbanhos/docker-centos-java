FROM centos:8
LABEL author="david.banhos@gmail.com"

COPY src/*jdk*.tar.gz /tmp

RUN mkdir -p /opt/jdk \
    && tar -xzf /tmp/*jdk*.tar.gz -C /opt/jdk \
    && rm -fr /tmp/jdk* \
    && ln -s /opt/jdk/jdk* /opt/jdk/latest

ENV JAVA_HOME /opt/jdk/latest

ENV PATH "${JAVA_HOME}/bin:${PATH}"
