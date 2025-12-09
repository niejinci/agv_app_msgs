# agv_app_msgs/msg/Lifting.msg

# 动作类型常量定义
string PICK = "pick"    # 顶升动作
string DROP = "drop"    # 下降动作

# 动作类型（取值为上述PICK/DROP常量）
string action

# 目标高度 (单位: m)
float64 height