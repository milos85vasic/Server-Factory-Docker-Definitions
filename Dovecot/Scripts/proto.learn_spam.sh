#!/bin/bash

echo "$(date) Learn SPAM script" >> /var/log/dovecot/dovecot.debug.log
#IN_DATA=$(cat)
#echo "$(date) We are about to learn SPAM from: " >> /var/log/dovecot/dovecot.debug.log
#echo "$IN_DATA" >> /var/log/dovecot/dovecot.debug.log
#
#echo -e "$IN_DATA" | curl -X POST -H "Password: {{SERVICE.ANTI_SPAM.WEBUI.PASSWORD}}" --data-binary @- \
#{{SERVICE.ANTI_SPAM.NAME}}:{{SERVICE.ANTI_SPAM.PORTS.WEBUI}}/learnspam
#
#echo "$(date) SPAM learning completed" >> /var/log/dovecot/dovecot.debug.log