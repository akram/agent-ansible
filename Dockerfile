FROM quay.io/openshift/origin-jenkins-agent-base:v4.0

ENV BASH_ENV=/usr/local/bin/scl_enable \
    ENV=/usr/local/bin/scl_enable \
    PROMPT_COMMAND=". /usr/local/bin/scl_enable" 

RUN yum install -y ansible python3-pip git findutils gcc
WORKDIR /root/workspace

