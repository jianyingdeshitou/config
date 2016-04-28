#!/bin/bash
VBoxManage modifyvm $1 --nic1 nat
VBoxManage modifyvm $1 --natpf1 "sshd,tcp,,2222,,22"
VBoxManage modifyvm $1 --macaddress1 auto 
