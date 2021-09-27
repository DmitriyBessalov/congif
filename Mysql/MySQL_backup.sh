#!/bin/sh
mysqldump --user='root' --password='dsICZXtyc' bzd-crm > /root/backup/bzd-crm.sql
mysqldump --user='root' --password='dsICZXtyc' ccrm > /root/backup/ccrm.sql
mysqldump --user='root' --password='dsICZXtyc' kzzdcrm > /root/backup/kzzdcrm.sql
mysqldump --user='root' --password='dsICZXtyc' zd-crm > /root/backup/zd-crm.sql

tar -cf /root/backup/crm_$(date +%Y-%m-%d_%H:%M:%S).tar.gz /root/backup/ccrm.sql /root/backup/kzzdcrm.sql /root/backup/bzd-crm.sql /root/backup/zd-crm.sql /home/zd-crm
rm /root/backup/bzd-crm.sql
rm /root/backup/ccrm.sql
rm /root/backup/kzzdcrm.sql
rm /root/backup/zd-crm.sql

mount -t davfs https://webdav.yandex.ru:443 /mnt/yandex
mv /root/backup/* /mnt/yandex/backup
exit 0
