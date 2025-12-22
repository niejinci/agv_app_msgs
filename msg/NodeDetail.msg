# agv_app_msgs\msg\\NodeDetail.msg
# 节点消息

# 角度，单位是弧度 (-pi, pi]
float64 angle

# 节点名称
string name

# x坐标，单位米
float64 x

# y坐标，单位米
float64 y

Avoid avoid

########## 额外的内部字段 ##########

# 节点标识，例如用 name 表示
string node_id

# 节点序列号，从0开始
int32 sequence_id

# 绑定的动作
ActionDetail[] bound_actions