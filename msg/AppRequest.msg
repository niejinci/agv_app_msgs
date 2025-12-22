# agv_app_msgs\msg\AppRequest.msg
# 从 grpc_server 到 agv_app_server 的请求消息

# 消息头，包含时间戳
std_msgs/Header header

# 唯一请求ID，由grpc_server生成，用于异步响应匹配
string request_id

# 命令类型: 区分不同的指令
string command_type

################################################
# 设置agv操作模式
OperatingMode operating_mode

# 开始或停止数据流
ManageDataSubscription manage_data_subscription

# 触发AGV进行重定位
Relocation relocation

# 控制AGV进行平动
Translation translation

# 控制AGV进行原地旋转
Rotation rotation

# 控制托盘旋转
PalletRotation pallet_rotation

# 控制顶升机构动作
Lifting lifting

# 取消当前正在执行的任务
CancelTask cancel_task

# 以给定的速度遥控AGV
RemoteControl remote_control

# 触发或解除软急停
EmergencyStop emergency_stop

# 设置rcs上线
MqttState mqtt_state

# 任务链参数
TaskChain task_chain