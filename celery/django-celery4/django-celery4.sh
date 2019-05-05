#!/bin/sh
case $1 in
   start) cd /Users/coxhuang/Documents/GitHub/django-celery4 && celery multi start worker1 -A celery4 && sudo celery -A celery4 beat -l info  >  out.file  2>&1  & ;; # 
   stop) ps -ef |grep celery |grep beat |grep celery4 |awk '{print $2}' | xargs kill -9 && ps -ef |grep celery |grep worker |grep celery4 |awk '{print $2}' | xargs kill -9;;
   *) echo "require start|stop" ;;
esac
