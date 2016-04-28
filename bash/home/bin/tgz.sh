#!/bin/bash
DATE=`date +%Y%m%d-%H%M%S`
BKFILE=$1-$DATE.tar.gz
tar -cvpzf $BKFILE $1
