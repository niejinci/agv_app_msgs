# agv_app_msgs/msg/AppRequest.msg
# 从 grpc_server 到 agv_app_server 的请求消息

# 消息头，包含时间戳和frame_id
std_msgs/Header header

# 唯一请求ID，由grpc_server生成，用于异步响应匹配
string request_id

# 命令类型: 定义客户端可以发出的所有指令
# 例如:LIFTING, REMOTE_CONTROL, START_TASK
string command_type

# 参数: 使用JSON字符串来传递不同命令所需的参数
# 这种设计提供了极大的灵活性，未来增加新命令或修改参数时，
# 无需修改.msg文件，从而避免了双方重新编译和部署。
#
# 示例:
# 1. 举升指令: command_type="LIFTING", params=R"({ "action": "pick", "height": 0.15 })";
# 2. 遥控指令: command_type="REMOTE_CONTROL", params=R"({ "linear_velocity": 0.5, "angular_velocity": 30, "lateral_velocity": 0.8 })";
string params_json