#!/bin/bash

exec curl -X POST -H "Password: {{SERVICE.ANTI_SPAM.WEBUI.PASSWORD}}" --data-binary @- \
{{SERVICE.ANTI_SPAM.NAME}}:{{SERVICE.ANTI_SPAM.PORTS.WEBUI}}/learnspam >> /var/log/dovecot/dovecot.debug.log