clear all;
clc;
close all;

rosshutdown
rosinit

rostopic list


set = 1;
get = 0;

%proto model 11 14-15 L, 7 4-5 R
JointPublisher = [
%     rospublisher('jointXX_controller/command', 'std_msgs/Float64');
    rospublisher('joint11_controller/command', 'std_msgs/Float64');
    rospublisher('joint14_controller/command', 'std_msgs/Float64');
    rospublisher('joint15_controller/command', 'std_msgs/Float64');
    rospublisher('joint07_controller/command', 'std_msgs/Float64');
    rospublisher('joint04_controller/command', 'std_msgs/Float64');
    rospublisher('joint05_controller/command', 'std_msgs/Float64');

];


JointSubscriber = [
%     rossubscriber('jointXX_controller/state');
    rossubscriber('joint11_controller/state');
    rossubscriber('joint14_controller/state');
    rossubscriber('joint15_controller/state');
    rossubscriber('joint07_controller/state');
    rossubscriber('joint04_controller/state');
    rossubscriber('joint05_controller/state');
];

pause(2);




DynaAngle(set, JointPublisher(1), 1.5);
    
pause(2.5);

angles = DynaAngle(get, JointSubscriber(1), 0);
angles
pause(1)

DynaAngle(set, JointPublisher(1), 0);

pause(2);

angles = DynaAngle(get, JointSubscriber(1), 0);
angles
pause(1)


rosshutdown










