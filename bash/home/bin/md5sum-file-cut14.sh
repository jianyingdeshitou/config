#!/bin/bash
echo $1 | md5sum |cut -b1-14
