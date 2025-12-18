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

agv_app_msgs 被多个包依赖，将其作为一个公共依赖，安装在一个独立的，所有应用都能访问到的地方

CMake 的设计哲学是：CMakeLists.txt 定义“安装什么”，而用户（构建者）在编译时定义“安装到哪里”。

```sh
# 清理旧的（可选，推荐）
rm -rf build/agv_app_msgs install/agv_app_msgs

# 指定安装路径为生产环境目录
# --install-base: 告诉 colcon 把最终产物放到哪里
# --merge-install: (可选) 把 lib, include 等平铺在根目录下，而不是多一层包名目录（适合部署，但不强制）
colcon build --packages-select agv_app_msgs --install-base /home/byd/node/agv_app_msgs --merge-install
```