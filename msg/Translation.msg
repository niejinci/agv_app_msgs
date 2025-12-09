# agv_app_msgs/msg/Translation.msg
# 小车平动

# X方向移动速度 (m/s)
float64 vx

# Y方向移动速度 (m/s)
float64 vy

# 移动距离 (m)
float64 dist

# 运动模式常量 (枚举式)
uint8 MODE_LOCALIZATION=0   # 定位模式
uint8 MODE_ODOM=1           # 里程计模式

# 运动模式字段: 使用上面常量之一。默认为 MODE_ODOM (1).
uint8 mode=MODE_ODOM