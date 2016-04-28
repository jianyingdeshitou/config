#!/bin/bash
VBoxManage clonevm $1 --name $2 --basefolder $3 --register
