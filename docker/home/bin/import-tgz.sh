#!/bin/bash
gzip -dc $1 | docker import - $2
