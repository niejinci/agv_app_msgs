# agv_app_msgs/msg/OperatingMode.msg
# 设置小车控制模式

# 操作模式常量定义
string AUTOMATIC = "AUTOMATIC"          # 自动模式
string SEMIAUTOMATIC = "SEMIAUTOMATIC"  # 半自动模式
string MANUAL = "MANUAL"                # 手动模式
string SERVICE = "SERVICE"              # 服务模式，小车不能移动,用于配置
string TEACHIN = "TEACHIN"            # 示教模式

# 操作模式字段（取值为上述常量）
string mode "AUTOMATIC"