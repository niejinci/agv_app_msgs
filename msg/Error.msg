# agv_app_msgs\msg\Error.msg

# 错误类型编码（在数据库中作为错误类型唯一编码）
string error_type

# 错误描述，可省略(如果因货物检测报错，上报任务下发的编码和实际检测到的二维码，例：任务编码：xxx,检测货物编码：xxy)
string error_description

# 错误提示，没有时为空
string error_hint

# 错误级别枚举{WARNING,FATAL}
# WARNING: 不影响AGV执行任务的错误
# FATAL: 如果不消除错误，AGV完全无法执行任务
string error_level
