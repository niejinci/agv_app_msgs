# agv_app_msgs\msg\ActionDetail.msg
# 动作消息，内部使用

# 动作名称常量
string PICK = "pick"
string DROP = "drop"
string START_CHARGING = "start_charging"
string STATION_CODE_RECTIFY = "station_code_rectify"
string SET_DO = "set_do"
string SET_DI = "set_di"

# 动作名称
string name

# 动作类型
# 1. 动作(action) 分为两类：【即时动作】 和 【任务动作】
# 2. 即时动作：可以独立执行的动作
# 3. 任务动作：action 作为任务的参数，在任务中执行的动作
# 4. 即时动作的 category=instant 任务动作的 category=binding
# 5. category=binding 的 action 会绑定到节点，绑定规则如下：
#       - 默认绑定前面边的终点
#       - 如果前面没有节点的话就绑定后面边的起点。
string category

# 顶升动作用
string action
# 高度，单位[m]
float64 height

# 充电动作用，充电时间，单位分钟
uint32 charging_time

# gpio 口的下标，取值范围 [0, 23]
int32 index
# index 对应的值，0 or 1
int32 value

# 站点二维码纠正动作用
# 1 - DependencyWareType - 依赖载具类型
# 2 - QrCodeChangeDirectionRectify - 站台内原地旋转纠偏
# 3 - QrCodeExitStationRectify - 出站纠偏
int32 type

# 仅限于绑定类型动作，动作限制类型，HARD 表示动作限制在 NODE(节点) 上执行，NONE 表示动作限制在 EDGE(边) 上执行，不传时后台程序默认取值 HARD
string blocking_type

########## 额外的内部字段 ##########

# 动作标识，例如用 时间戳
string action_id

# 动作绑定到的节点名称
string bind_node_name

# 动作绑定到的边名称
string bind_edge