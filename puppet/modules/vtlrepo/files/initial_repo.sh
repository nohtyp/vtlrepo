#!/bin/bash

HTTPDIR='/var/www/html'
REPOS='centos6_epel glusterfs-epel centos7_puppetlabs'
REPOFILE='/root/.initialreposync'

if [ -f $REPOFILE ]; then
  /bin/rm $REPOFILE
else
  /bin/touch $REPOFILE
fi

for i in $REPOS; do
  if [ ! -d $HTTPDIR/$i ];then
    /bin/reposync -p $HTTPDIR --repoid=$i -l -q
    /usr/bin/createrepo -q $HTTPDIR/$i
  fi
done
