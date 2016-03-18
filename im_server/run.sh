#!/bin/bash
# author: amirline

./restart.sh  login_server
./restart.sh  msg_server
./restart.sh  route_server
./restart.sh  file_server
./restart.sh  push_server
./restart.sh  db_proxy_server