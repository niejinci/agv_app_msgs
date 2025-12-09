# agv_app_msgs\msg\AgvPosition.msg
# AGV 小车位姿（估计/定位结果）

# x 坐标（单位：米），在 map/odom 等全局坐标系下的 X 分量
float64 x

# y 坐标（单位：米），在 map/odom 等全局坐标系下的 Y 分量
float64 y

# z 坐标（单位：米），高度分量（通常对地面高度）
float64 z

# 偏航角（yaw，单位：弧度）。
# 与历史代码中的 theta 等价，范围通常为 [-pi, pi]
float64 yaw

# 俯仰角（pitch，单位：弧度）
float64 pitch

# 横滚角（roll，单位：弧度）
float64 roll

# 地图ID 或地图名称，用于标识当前位姿所属的地图/参考框架
string map_id

# 位置是否已初始化（布尔）
# true 表示定位模块已初始化并且位姿可信；false 表示未初始化或无效位姿
bool position_initialized

# 地图/位姿的文本描述（可选），用于调试或显示，例如 "out_door_map - sector A"
string map_description

# 定位置信度评分（数值，通常为 0-100 的百分制评分）
# 值越高表示定位结果越可靠。具体量程由上层系统约定。
float64 localization_score

# 定位偏差范围/等级（整型）
# 表示定位的偏差范围或离散等级（含义与量纲由系统约定）。
# 例如：0 表示偏差在可接受范围内，非 0 值可用于表示不同的偏差等级或错误码。
int64 deviation_range