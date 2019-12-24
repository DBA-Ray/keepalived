#!/bin/bash
if [ $(ps -C proxysql --no-header | wc -l) -eq 0 ];then
      systemctl start proxysql
fi
sleep 3
if [ $(ps -C proxysql --no-header | wc -l) -eq 0 ];then
      systemctl stop keepalived
fi
