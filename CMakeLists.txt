cmake_minimum_required(VERSION 3.8)
project(agv_app_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# 查找依赖包
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)

# 列出 msg 目录下所有的消息文件
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
  "msg/SetOperatingMode.msg"
  "msg/Translation.msg"
)

# 生成接口
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs builtin_interfaces
)

# 导出运行时依赖
ament_export_dependencies(rosidl_default_runtime std_msgs builtin_interfaces)

ament_package()