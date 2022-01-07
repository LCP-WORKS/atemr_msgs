
std_msgs/String agentSMState

#    0     |     1      |  2  |   3   |    4   |     5     |        6       |        7
#LeftMotor | RightMotor | IMU | Lidar | Camera | WebServer | IRSensor Front | IRSensor Rear
uint8 hardwareStatus

#    0     |     1      |       2     |          3         |        4       |
#Heartbeat | Hardware   |Manual/Auto  | Wifi(Connectivity) | Localization   |
uint8 agentStatus
