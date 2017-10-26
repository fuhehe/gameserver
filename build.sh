#!/bash/bin

#构建生成目录
if [ ! -d "./build" ];then
	mkdir build
fi

#清除原数据
cd ./build
rm -rf *

#构建新项目
if [ -z "$1" ];then
	cmake -DCMAKE_BUILD_TYPE=Debug ..
else
	if [ $1 == "release" ]; then
		cmake -DCMAKE_BUILD_TYPE=Release ..
	else
		cmake -DCMAKE_BUILD_TYPE=Debug ..
	fi
fi
