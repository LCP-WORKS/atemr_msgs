cmake_minimum_required(VERSION 3.0.2)
project(atemr_msgs)

add_compile_options(-std=c++17)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  move_base_msgs
  message_generation
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   Feedback.msg
   Status.msg
   AgentStatus.msg
   WebStatus.msg
   SpeedRampStatus.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   DBUSService.srv
   AgentService.srv
   HardwareService.srv
   WebService.srv
   SpeedRampService.srv
   NodeControllerService.srv
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  move_base_msgs
 )

###################################
## catkin specific configuration ##
###################################

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES atemr_msgs
  CATKIN_DEPENDS std_msgs message_runtime
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

## Mark other files for installation (e.g. launch and bag files, etc.)
 install(DIRECTORY
   msg
   srv
   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
 )
