# 指定CMake的最低版本，ROS 2 里的 ament_cmake 构建系统通常要求至少 3.5 或 3.8 以上的版本，以支持现代 C++ 特性和构建宏。
cmake_minimum_required(VERSION 3.8)
# 定义项目名称，必须与 package.xml 中的 <name> 标签一致。
project(agv_app_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  # 添加编译选项以启用更多的警告信息
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# 查找依赖包
# 查找 ament_cmake 构建工具包，REQUIRED 表示如果找不到就报错停止
# 这是 ROS 2 的构建系统基础，提供了后续用到的 ament_package() 等宏
find_package(ament_cmake REQUIRED)

# 查找 rosidl_default_generators 包，ROS 2 的核心工具，负责将 .msg 文件转换为 C++、Python 等语言的源代码
find_package(rosidl_default_generators REQUIRED)

# 查找 std_msgs（标准消息库，如 String, Int32）和 builtin_interfaces（内置接口，如 Time, Duration
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)

# 定义消息文件列表，赋值给 msg_files 变量
set(msg_files
  "msg/AgvPosition.msg"
  "msg/AppData.msg"
  "msg/AppRequest.msg"
  "msg/CancelTask.msg"
  "msg/EmergencyStop.msg"
  "msg/Lifting.msg"
  "msg/ManageDataSubscription.msg"
  "msg/McuData.msg"
  "msg/PalletRotation.msg"
  "msg/PointXyzi.msg"
  "msg/QrCameraData.msg"
  "msg/Relocation.msg"
  "msg/RemoteControl.msg"
  "msg/Rotation.msg"
  "msg/Servor.msg"
  "msg/OperatingMode.msg"
  "msg/Translation.msg"
  "msg/Error.msg"
  "msg/RunningTask.msg"
  "msg/Battery.msg"
  "msg/SysInfo.msg"
  "msg/ProcessInfo.msg"
  "msg/Resource.msg"
  "msg/Version.msg"
  "msg/MqttState.msg"
)

# 生成接口
# 第一个参数是目标名称，通常与项目名称相同
# 第二个参数是消息文件列表变量
# DEPENDENCIES 声明依赖
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs builtin_interfaces
)

# 导出运行时依赖
# 将这些依赖导出给下游包（即其他使用了本包 agv_app_msgs 的包）
# rosidl_default_runtime 提供运行时支持
# std_msgs 和 builtin_interfaces：因为你的消息包含了它们，所以使用你的消息的人也需要自动链接这些库
#   确保其他包在 find_package(agv_app_msgs) 时，能够自动获取到这些必要的传递依赖，而不需要手动再 find 一遍
ament_export_dependencies(rosidl_default_runtime std_msgs builtin_interfaces)

# 标记这是一个 ament 包。
# 这是 CMake 配置的最后一步。它负责生成 package.xml 中描述的配置信息、CMake 配置文件（如 agv_app_msgsConfig.cmake），并处理安装逻辑，使该包能被 ROS 2 系统正确识别和加载。
ament_package()