#!/bin/bash
# author: amirline

#修改im_server/conf-a中的配置文件
#只适用于所有服务都部署在一台机器上。

FILE_SERVER_CONF=fileserver.conf
LOGIN_SERVER_CONF=loginserver.conf
MSG_SERVER_CONF=msgserver.conf
ROUTE_SERVER_CONF=routeserver.conf
MSFS_SERVER_CONF=msfs.conf
HTTP_MSG_SERVER_CONF=httpmsgserver.conf
PUSH_SERVER_CONF=pushserver.conf
DB_PROXY_SERVER_CONF=dbproxyserver.conf


echo The server ip: $1
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$FILE_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$LOGIN_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$MSG_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$ROUTE_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$MSFS_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$HTTP_MSG_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$PUSH_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf-a/$DB_PROXY_SERVER_CONF