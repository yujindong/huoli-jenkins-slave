
FROM jenkins/jnlp-slave:latest

VOLUME ["/new-back-agent/repository"]
VOLUME ["/new-front-agent/repository"]
USER root
RUN set -x \
    && chown -R jenkins:jenkins /new-back-agent \
    && chown -R jenkins:jenkins /new-front-agent

LABEL MAINTAINER="yujindong <83575615@qq.com>"
