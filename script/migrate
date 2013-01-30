#!/bin/sh

hive -e 'drop table resolved;'
hive -e 'create table resolved (ip STRING, host STRING) row format delimited fields terminated by "\t";'
