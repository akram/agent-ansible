FROM quay.io/openshift/origin-jenkins-agent-base:v4.0

ENV BASH_ENV=/usr/local/bin/scl_enable \
    ENV=/usr/local/bin/scl_enable \
    PROMPT_COMMAND=". /usr/local/bin/scl_enable" 

RUN curl https://raw.githubusercontent.com/cloudrouter/centos-repo/master/CentOS-Base.repo -o /etc/yum.repos.d/CentOS-Base.repo && \
    curl http://mirror.centos.org/centos-7/7/os/x86_64/RPM-GPG-KEY-CentOS-7 -o /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

RUN DISABLE_REPOS="--disablerepo=rhel-server-extras --disablerepo=rhel-server --disablerepo=rhel-fast-datapath --disablerepo=rhel-server-optional \
              --disablerepo=rhel-server-ose --disablerepo=rhel-server-rhscl" && \
    INSTALL_PKGS="ansible python3-pip git findutils gcc" && \
    yum install -y $DISABLE_REPOS $INSTALL_PKGS 

WORKDIR /root/workspace

