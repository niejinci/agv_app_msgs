# agv_app_msgs\msg\RunningTask.msg

# 当前执行的任务的id, 如果没有任务在执行，其值为空
string order_id

# 上一个节点的名称
string last_node_id

# 下一个节点的名称
string next_node_id

# 坐标
float64 x
float64 y
