# agv_app_msgs\msg\EdgeDetail.msg
# 边信息

# 开始点
NodeDetail start_point

# 控制点
ControlPoint[] control_points

# 结束点
NodeDetail end_point

# AGV在路径段上的朝向。与 orientationType 共同定义AGV的形式方式和形式角度，单位弧度
float64 orient

# orientationType 定义了路径段的定位形式，分别为地图全局坐标系(GLOBAL)和路径段的切线(TANGENTIAL)
# orientationType = TANGENTIAL, 此时 orientation 只有两个取值，为0时表示与前进，Pi时则表示为后退
# orientationType = GLOBAL, 此时，Orientation 表示车在地图上的角度，对于差速车而言，设备只可以以路径方向前进/后退，
# 因此 Orientation 只能为路径段角度或路径段角度减Pi(文档中说的是加pi, 跟奉工对齐是减 pi)，取值范围 [-pi, pi], 路径段角度计算方式为 atan2(y2 - y1, x2 - x1)
string orient_type

# load_orientation - 货物朝向
# Agv在当前路线上时的货物朝向,仅用于潜伏agv
# 当agv进入当前edge时agv应判断如果货物朝向与此字段不符则应在agv到达下一节点前旋转货物到指定朝向,未下发则不需要旋转;字段为枚举类型,取值如下:
# All: 货物角度与地面保持不变(即车转货不转)
# Horizontal: 货物长边与agv车体长边平行,如有货物贴有底码则根据底码,无底码则使用顶升板的方向计算;
# Vertical: 货物长边与agv车体长边垂直,如有货物贴有底码则根据底码,无底码则使用顶升板的方向计算;
# Front: 仅货物有底码时可用,货物底码方向与车头方向相同;
# Left: 仅货物有底码时可用,货物底码方向相对车方向逆时针旋转90°;
# Back: 仅货物有底码时可用,货物底码方向相对车头方向旋转180°;
# Right: 货物有底码时可用,货物底码方向相对车头方向顺时针旋转90°
string load_orient

# 小车在该边上的行驶速度，如果大于 max_speed 就取 max_speed 的值
float64 line_speed

# 【可选对象】避障参数，直行避障
Avoid avoid

########## 额外的内部字段 ##########

# 边的序列号, 从1开始
uint32 sequence_id

# 记录起始节点绑定的动作的索引
uint8[] start_point_bind_action

# 记录结束节点绑定的动作的索引
uint8[] end_point_bind_action

# 记录边在请求参数 tasks 数组中的索引
uint8 original_index