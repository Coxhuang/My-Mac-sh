#!/bin/sh
case $1 in
   start) cd /opt/app/gitblit/gitblit-1.8.0 && ./gitblit.sh & ;; 
   stop) ps -ef |grep gitblit  |awk '{print $2}' | xargs kill -9 ;;
   *) echo "require start|stop" ;;
esac
