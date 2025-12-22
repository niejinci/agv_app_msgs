# agv_app_msgs\msg\TaskChain.msg
# 任务链消息

# 【可选】最大速度，单位m
float64 max_speed

# 地图名称
string map_id

# true: 表示循环任务， false: 表示非循环任务
bool loop

# 任务数组
# 数组元素要么是 【路径导航】，要么是【动作】
Task[] tasks