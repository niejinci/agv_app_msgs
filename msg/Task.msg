# agv_app_msgs\msg\Task.msg
# 任务消息

# 任务类型常量，路径导航和动作
string PATH_NAVIGATION = "path_navigation"
string ACTION = "action"

# 任务类型
# = PATH_NAVIGATION, 设置 edges
# = ACTION, 设置 action
string type

# 路径导航的边，可以有多条
Edge[] edges

# 动作
Action action
