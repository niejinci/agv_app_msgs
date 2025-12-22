# agv_app_msgs\msg\\Node.msg
# 节点消息

# 角度，单位是弧度 (-pi, pi]
float64 angle

# 节点名称
string name

# x坐标，单位米
float64 x

# y坐标，单位米
float64 y

# 【可选】避障对象
Avoid avoid