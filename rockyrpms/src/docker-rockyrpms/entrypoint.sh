#!/bin/bash


/usr/bin/systemctl restart autofs &
exec /usr/sbin/init
echo "test" > /tmp/test.test.txt
