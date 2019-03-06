clear all;
clc;
close all;

rosshutdown
rosinit

rostopic list

JointPublisher = [
    rospublisher('joint11_controller/command', 'std_msgs/Float64');
    rospublisher('joint12_controller/command', 'std_msgs/Float64');
    rospublisher('joint13_controller/command', 'std_msgs/Float64');
    rospublisher('joint14_controller/command', 'std_msgs/Float64');
    rospublisher('joint15_controller/command', 'std_msgs/Float64');
];


JointSubscriber = [
    rossubscriber('joint11_controller/state');
    rossubscriber('joint12_controller/state');
    rossubscriber('joint13_controller/state');
    rossubscriber('joint14_controller/state');
    rossubscriber('joint15_controller/state');
];

pause(2);




DynaAngle(1, JointPublisher(1), 1);
    
pause(2);

DynaAngle(1, JointPublisher(1), 0);

pause(2);

angles = DynaAngle(0, JointSubscriber(1), 0);
angles

pause(1)


rosshutdown










