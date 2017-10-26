#!/bin/bash

if [ ! -d "./build" ];then
	echo "找不到编译目录"
fi

cd ./build

if [ -z "$1" ];then
	make
else
	make $1
fi
