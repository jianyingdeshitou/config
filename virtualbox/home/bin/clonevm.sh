#!/bin/bash
VBoxManage clonevm $1 --name $2 --register
