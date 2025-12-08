# agv_app_msgs/msg/AppData.msg
# 从 agv_app_server 到 grpc_server 的数据/响应消息

# 消息头
std_msgs/Header header

# 数据来源/类型
# 例如: cmd_response-指令响应, agv_position-agv位姿, point_cloud-点云
string source_type

# 如果是指令响应(cmd_response)，这里填写对应的请求ID
# 如果是主动推送，此字段可为空
string request_id

# 响应状态 (仅用于指令响应)
bool success

# 附加信息 (例如，错误信息)
string message

# 数据主体: 同样使用JSON字符串来承载各种数据
# 这种设计让grpc_server的解析逻辑统一，只需解析JSON即可。
#
# 示例:
# 1. 位姿推送: source_type="agv_position", data_json=R"({ "deviation_range": 0, "localization_score": 78.93, "map_description": "", "map_id": "out_door_map", "pitch": 0, "position_initialized": true, "roll": 0, "theta": -0.0002673083589016188, "x": -0.18903135370238958, "y": -0.10455313108630876, "z": 0 })";
# 2. 点云推送: source_type="point_cloud", data_json=R"([ { "x": 1.1, "y": 2.2, "z": 0.0, "i": 2.2 }, //... ])";
# 3. 指令响应: source_type="cmd_response", request_id="1995091a-acbc-4014-b47b-ba7453faf230", success=true, data_json="{}"
string data_json