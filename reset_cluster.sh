for i in w{1..3} m{1..3}; do ssh $i hostname -f && ambari-agent stop && ambari-agent reset `hostname -f`&& ambari-agent start ; done
for i in w{1..3} m{1..3}; do ssh $i hostname -f && rm -rf /had* /etc/hadoop/conf/* /etc/hadoop/conf.backup/* /var/lib/hadoo* /tmp/hadoop* ; done
ambari-server stop && mysql -e "drop database ambari; create database ambari; use ambari; show tables; source /var/lib/ambari-server/resources/Ambari-DDL-MySQL-CREATE.sql; show tables;" && ambari-server start
