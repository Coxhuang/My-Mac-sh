#!/bin/sh
case $1 in
   start)  cd  /usr/local/Cellar/rabbitmq/3.7.14/sbin/ && ./rabbitmq-server & ;;
   stop)  ps -ef |grep rabbitmq |awk '{print $2}' | xargs kill -9 ;;
   *) echo "require start|stop" ;;
esac
