# agv_app_msgs\msg\Battery.msg
# 电池消息定义

# 当前电量剩余百分比
float64 battery_charge

# 当前电压
float64 battery_voltage

# 手动充电时一直都是 false, 通过充电桩充电时，才会是 true
bool charging