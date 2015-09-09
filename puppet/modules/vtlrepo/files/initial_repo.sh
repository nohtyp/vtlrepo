#!/bin/bash

HTTPDIR='/var/www/html'
REPOFILE='/root/.initialreposync'

NOARCH=`ls $HTTPDIR/noarch`
RH6=`ls $HTTPDIR/rh6`
RH7=`ls $HTTPDIR/rh7`
REPOS="$NOARCH $RH6 $RH7"

for i in $REPOS;do
  readlink -f $i
done




#function repocreate {
#  /bin/reposync -p $HTTPDIR/
#
#if [ ! -f $REPOFILE ]; then
#  /bin/touch $REPOFILE
#fi
#
#
#
#for i in $REPOS; do
#  if [ ! -d $HTTPDIR/$i ];then
#    /bin/reposync -p $HTTPDIR --repoid=$i -l -q
#    /bin/reposync -p $HTTPDIR/$i -c /etc/rh6.conf -l -q
#    /usr/bin/createrepo -q $HTTPDIR/$i
#  fi
#done
