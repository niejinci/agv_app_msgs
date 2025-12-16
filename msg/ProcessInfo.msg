# agv_app_msgs\msg\ProcessInfos.msg
# 进程信息

# 进程 id
uint32 pid

# 进程名称
string name

# 百分比，当前进程的 CPU 使用占比，范围可能超过 100%（多核系统 CPU 使用率可能超过 100%，与 TOP 命令结果保持一致）
float64 cpu

# 百分比，当前进程的物理内存使用占比，范围 0-100%
float64 mem

# 单位 MB，常驻内存集（Resident Set Size），表示进程占用的物理内存大小
float64 rss

# 单位 MB，虚拟内存大小（Virtual Memory Size），表示进程的已分配虚拟地址空间大小
float64 vss

# 单位 MB，比例内存集（Proportional Set Size），考虑共享内存的比例后占用的内存大小
float64 pss

# 当前进程的线程数
uint16 threads

# 当前进程打开的文件描述符数量
uint16 fds

# 自愿上下文切换次数（主动让出 CPU）
uint32 cswch

# 非自愿上下文切换次数（被系统强制切换）
uint32 nvcswch

# 软件模型版本号
string model_ver

# 当前进程的状态（例如运行中、暂停等）
string state

# 用户态 CPU 时间占比（百分比）
float64 us

# 内核态 CPU 时间占比（百分比）
float64 sy
