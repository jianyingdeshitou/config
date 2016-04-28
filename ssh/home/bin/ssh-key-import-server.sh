#!/bin/bash

# 建立 .ssh 文件夹
mkdir .ssh

# 修改文件夹权限
chmod 700 .ssh

# 将客户端传过来的id_rsa.pub文件中的内容加入到authorized_keys中
cat id_rsa.pub >> .ssh/authorized_keys
chmod 644 .ssh/authorized_keys
