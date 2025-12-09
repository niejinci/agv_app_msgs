[toc]
***

# 构建安装

## 使用 CMake 构建安装

```sh
cd src/agv_app_msgs
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
make
make install  # 这一步会直接把文件写入 /usr/include 和 /usr/lib
```

## 使用 colcon 构建安装

```sh
# 1. 标准构建
colcon build --packages-select agv_app_msgs

# 2. 拷贝头文件，库文件
cp -r install/agv_app_msgs/include/* /usr/include/
cp -r install/agv_app_msgs/lib/* /usr/lib/
```