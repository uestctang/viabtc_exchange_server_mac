### 
# @Description: 
 # @Author: Aeneas
 # @Github: https://github.com/cofepy
 # @Date: 2019-10-27 16:51:04
 # @LastEditors: Aeneas
 # @LastEditTime: 2019-10-27 19:22:14
 ###
#!/bin/bash

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_PASS="thhk0607"
MYSQL_DB="trade_history"

for i in `seq 0 99`
do
    echo "create table balance_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE balance_history_$i LIKE balance_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE order_history_$i LIKE order_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_detail_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE order_detail_$i LIKE order_detail_example;"
done

for i in `seq 0 99`
do
    echo "create table deal_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE deal_history_$i LIKE deal_history_example;"
done

for i in `seq 0 99`
do
    echo "create table user_deal_history_$i"
    mysql -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASS $MYSQL_DB -e "CREATE TABLE user_deal_history_$i LIKE user_deal_history_example;"
done
