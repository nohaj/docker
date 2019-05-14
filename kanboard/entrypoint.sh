#!/bin/sh

/usr/sbin/postfix start-fg &
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start postfix: $status"
  exit $status
fi

/usr/sbin/httpd -D FOREGROUND
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start httpd: $status"
  exit $status
fi

