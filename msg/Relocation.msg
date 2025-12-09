# agv_app_msgs\msg\Relocation.msg
# 手动重定位

# 目标点的X坐标 (单位: m)
float64 x

# 目标点的y坐标 (单位: m)
float64 y

# 目标姿态角 (单位: 弧度), 范围 [-PI, PI]
float64 theta

# 目标地图ID。若与当前地图不同，会先执行地图切换
string map_id

string last_nodeid