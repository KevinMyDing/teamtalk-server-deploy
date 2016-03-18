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

FILE_SERVER=file_server
LOGIN_SERVER=login_server
MSG_SERVER=msg_server
ROUTE_SERVER=route_server
MSFS_SERVER=msfs
HTTP_MSG_SERVER=http_msg_server
PUSH_SERVER=push_server
DB_PROXY_SERVER=db_proxy_server


echo The old server ip: $1
echo The new server ip: $2
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$FILE_SERVER/$FILE_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$LOGIN_SERVER/$LOGIN_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$MSG_SERVER/$MSG_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$ROUTE_SERVER/$ROUTE_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$MSFS_SERVER/$MSFS_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$HTTP_MSG_SERVER/$HTTP_MSG_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$PUSH_SERVER/$PUSH_SERVER_CONF
sed -i "s/$1/$2/g"  ./im_server/im-server-1/$DB_PROXY_SERVER/$DB_PROXY_SERVER_CONF