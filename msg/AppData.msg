# agv_app_msgs\msg\AppData.msg
# 从 agv_app_server 到 grpc_server 的数据/响应消息

# 消息头
std_msgs/Header header

# 数据来源/类型: "cmd_response" 或 具体数据类型
string source_type

# 如果是指令响应(cmd_response)，填写对应的请求ID
string request_id

# 命令类型: 区分不同的指令
string command_type

# 响应状态 (仅用于 cmd_response)
bool success

# 附加信息 (例如，错误信息)
string message

################################################

# 推送AGV的位置数据
AgvPosition agv_position

# 电池
McuData mcu_data

# 下(地码)扫码相机
QrCameraData qr_pos_camera_data
# 上(货架)扫码相机
QrCameraData qr_rack_camera_data

# 点云
PointXyzi[] points
