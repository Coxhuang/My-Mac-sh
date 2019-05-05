#!/bin/sh
case $1 in
   start)  mongod --config /usr/local/etc/mongod.conf  & ;;
   stop)  ps -ef |grep mongo |awk '{print $2}' | xargs kill -9 ;;
   *) echo "require start|stop" ;;
esac
