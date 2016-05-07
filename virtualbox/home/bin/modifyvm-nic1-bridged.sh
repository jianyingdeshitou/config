#!/bin/bash
VBoxManage modifyvm $1 --nic1 bridged
VBoxManage modifyvm $1 --bridgeadapter1 $2
VBoxManage modifyvm $1 --macaddress1 auto 
