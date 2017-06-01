#!/bin/bash
echo $1 | md5 |cut -b1-14
