# agv_app_msgs\msg\McuData.msg
# 用的 agv_service\msg\hal\MCUToPC.msg 的定义

# MCUToPC.msg
uint8 gpio_input_1
uint8 gpio_input_2
uint8 gpio_input_3

uint8 logic_state_1
uint8 logic_state_2

Servor right_servo
Servor left_servo
Servor lift_servo
Servor rotation_servo

uint32 spare
uint8 output_1 #stm32 gpio 上报1
uint8 output_2 #stm32 gpio 上报2
uint8 output_3 #stm32 gpio 上报3

float64 current #电流

uint8 emergency_stop
uint8 signal_flag

builtin_interfaces/Time stamp #ros2内置类型时间戳
int64 timestamp               #C++标准库提供的纳秒级时间戳
float64 battery_charge      # bms_data get
bool charging
bool motor_match
bool light_state
bool audio_state
bool motor_state
bool qrcamera_state
float64 battery_voltage