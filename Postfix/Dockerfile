FROM fedora:32

RUN dnf update -y && \
    dnf install findutils -y && \
    dnf clean all && \
    dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
    dnf install -y postfix postfix-pgsql openssl telnet net-tools iputils && \
    alternatives --set mta /usr/sbin/sendmail.postfix && \
    groupadd -g 5000 vmail && useradd -g vmail -u 5000 vmail -d /home/vmail -m

ADD Configuration/*.* /etc/postfix/
ADD Scripts/start.sh /start.sh
ADD Scripts/logrotate.sh /logrotate.sh

EXPOSE 465

CMD sh start.sh