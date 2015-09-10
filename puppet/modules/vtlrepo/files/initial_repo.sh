#!/bin/bash

HTTPDIR='/var/www/html'
REPOFILE='/root/.initialreposync'
REPOCONF='rh6 rh7 noarch'

touch $REPOFILE

for i in $REPOCONF;do
  /bin/reposync -c /etc/$i.conf -p $HTTPDIR/$i
  /bin/touch /root/.$i
done

for j in $REPOCONF;do
  if [ -f /root/.$j ];then
    NEWLIST=`find $HTTPDIR/$j -maxdepth 1 -not -path $HTTPDIR/$j`
    for k in $NEWLIST;do
      /bin/createrepo -q $k
    done
  fi
done

