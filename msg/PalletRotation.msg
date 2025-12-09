# agv_app_msgs/msg/PalletRotation.msg
# 托盘旋转

# 目标旋转角度 (单位: 弧度)
float64 angle

# 旋转模式常量 (枚举式)
uint8 MODE_INCREMENTAL=0    # 增量式
uint8 MODE_ABSOLUTE=1       # 绝对式

# 旋转模式字段: 使用上面常量之一。默认值为 MODE_ABSOLUTE (1)，
# 需验证默认值是否可以用定义的常量
uint8 mode=MODE_ABSOLUTE