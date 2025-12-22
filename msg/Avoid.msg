# agv_app_msgs\msg\Avoid.msg
# 避障对象，小车避障距离 = 货架尺寸 + avoid 对象中对应方向的距离
# 节点中的 avoid 控制 旋转避障，边中的 avoid 控制直行避障

# 【可选】避障方案 ID，建议使用 UUIDs
string avoid_id

# 前方安全距离，单位m, 默认 0.5

float64 forward 0.5

# 后方安全距离，单位m, 默认 0.5
float64 back 0.5

# 左方距离，单位m, 默认 0.2
float64 left 0.2

# 右方距离，单位m, 默认 0.2
float64 right 0.2