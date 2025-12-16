# agv_app_msgs\msg\Resources.msg
# 系统资源信息

# CPU 使用率，系统总值，范围 0-100%
float64 cpu

# CPU 空闲态比例，范围 0-100%
float64 idle

# 内存使用比例，范围 0-100%
float64 mem

# 未使用物理内存大小，单位：MB
float64 mem_unused

# 已使用物理内存大小，单位：MB
float64 mem_used

# 系统已用交换空间大小，单位：MB
float64 swapd

# CPU 温度，如果有多核，取均值，单位：摄氏度
float64 temp
