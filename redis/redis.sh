#!/bin/sh
case $1 in
   start) cd /opt/app/redis-5.0.4/src/ && ./redis-server  & ;;  
   stop) ps -ef |grep redis |awk '{print $2}' | xargs kill -9  ;;
   *) echo "require start|stop" ;;
esac
