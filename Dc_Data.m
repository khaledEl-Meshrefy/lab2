MotorData2=xlsread('Dc Readings test.xlsx','2rps','A1:f1502');
MotorData3=xlsread('Dc Readings test.xlsx','3rps','A1:f1502');
MotorData4=xlsread('Dc Readings test.xlsx','4rps','A1:f1502');
MotorData5=xlsread('Dc Readings test.xlsx','5rps','A1:f1502');
MotorData6=xlsread('Dc Readings test.xlsx','6rps','A1:f1502');
MotorData7=xlsread('Dc Readings test.xlsx','7rps','A1:f1502');
Desiredrps2=MotorData2(:,2);
errorrps2=MotorData2(:,5);
errorrps3=MotorData3(:,5);
errorrps4=MotorData4(:,5);
errorrps5=MotorData5(:,5);
errorrps6=MotorData6(:,5);
errorrps7=MotorData7(:,5);
Time2=MotorData2(:,1);
Actualrps2=MotorData2(:,3);
Slaverps2=MotorData2(:,4);
Desiredrps3=MotorData3(:,2);
Time3=MotorData3(:,1);
Actualrps3=MotorData3(:,3);
Slaverps3=MotorData3(:,4);
Desiredrps4=MotorData4(:,2);
Time4=MotorData4(:,1);
Actualrps4=MotorData4(:,3);
Slaverps4=MotorData4(:,4);
Desiredrps5=MotorData5(:,2);
Time5=MotorData5(:,1);
Actualrps5=MotorData5(:,3);
Slaverps5=MotorData5(:,4);
Desiredrps6=MotorData6(:,2);
Time6=MotorData6(:,1);
Actualrps6=MotorData6(:,3);
Slaverps6=MotorData6(:,4);
Desiredrps7=MotorData7(:,2);
Time7=MotorData7(:,1);
Actualrps7=MotorData7(:,3);
Slaverps7=MotorData7(:,4);

 figure(3)
 windowSize = 30; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 subplot(2,6,1:2)
 FilterdMasterrps2 = filter(b,a,Actualrps2);
 plot(Time2,FilterdMasterrps2);
 xlabel('Time');
 ylabel('Actual Master Rps');
 FilterdSlaverps2 = filter(b,a,Slaverps2);
 subplot(2,6,7:8),
 plot(Time2,FilterdSlaverps2)
 xlabel('Time');
 ylabel('Actual Slave Rps');
 windowSize = 35; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 FilterdMasterrps3 = filter(b,a,Actualrps3);
 subplot(2,6,3:4),
 
 plot(Time3,FilterdMasterrps3)
 xlabel('Time');
 ylabel('Actual Master Rps');
 FilterdSlaverps3= filter(b,a,Slaverps3);
 subplot(2,6,9:10),
 plot(Time3,FilterdSlaverps3)
 xlabel('Time');
 ylabel('Actual Slave Rps');
 windowSize = 28; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 FilterdMasterrps4 = filter(b,a,Actualrps4);
 subplot(2,6,5:6),plot(Time4,FilterdMasterrps4)
 xlabel('Time');
 ylabel('Actual Master Rps');
 FilterdSlaverps4 = filter(b,a,Slaverps4);
 subplot(2,6,11:12),plot(Time4,FilterdSlaverps4)
 xlabel('Time');
 ylabel('Actual Slave Rps');

%  figure (4)
%  windowSize = 30; 
%   b = (1/windowSize)*ones(1,windowSize);
%   a = 1;
%   Filterderrorrps2 = filter(b,a,errorrps2);
%  subplot(2,6,1:2)
%  plot(Time2,Filterderrorrps2);
%  subplot(2,6,3:4)
%  windowSize = 35; 
%   b = (1/windowSize)*ones(1,windowSize);
%   a = 1;
%   Filterderrorrps3 = filter(b,a,errorrps3);
%  plot(Time3,Filterderrorrps3);
%  subplot(2,6,5:6)
%  windowSize = 28; 
%  b = (1/windowSize)*ones(1,windowSize);
%  a = 1;
%   Filterderrorrps4 = filter(b,a,errorrps4);
%  
%  plot(Time4,Filterderrorrps4);
%  subplot(2,6,7:8)
%   windowSize = 20; 
%   b = (1/windowSize)*ones(1,windowSize);
%   a = 1;
%   Filterderrorrps5 = filter(b,a,errorrps5);
%  plot(Time5,Filterderrorrps5);
%  subplot(2,6,9:10)
%   windowSize = 20; 
%   b = (1/windowSize)*ones(1,windowSize);
%   a = 1;
%   Filterderrorrps6 = filter(b,a,errorrps6);
%  
%  plot(Time6,Filterderrorrps6);
%  subplot(2,6,11:12)
%  windowSize = 18; 
%   b = (1/windowSize)*ones(1,windowSize);
%   a = 1;
%  Filterderrorrps7 = filter(b,a,errorrps7);
%  plot(Time7,Filterderrorrps7);

 figure(2)
 windowSize = 20; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 FilterdMasterrps5 = filter(b,a,Actualrps5);
 subplot(2,6,1:2),
 plot(Time5,FilterdMasterrps5)
 xlabel('Time');
 ylabel('Actual Master Rps')
 FilterdSlaverps5 = filter(b,a,Slaverps5);
 subplot(2,6,7:8);
 plot(Time5,FilterdSlaverps5)
 xlabel('Time');
 ylabel('Actual Slave Rps');
 windowSize = 20; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 FilterdMasterrps6 = filter(b,a,Actualrps6);
 subplot(2,6,3:4);
 plot(Time6,FilterdMasterrps6)
 xlabel('Time');
 ylabel('Actual Master Rps');
 FilterdSlaverps6 = filter(b,a,Slaverps6);
 subplot(2,6,9:10);
 plot(Time6,FilterdSlaverps6)
 xlabel('Time');
 ylabel('Actual Slave Rps');
 windowSize = 18; 
 b = (1/windowSize)*ones(1,windowSize);
 a = 1;
 FilterdMasterrps7 = filter(b,a,Actualrps7);
 subplot(2,6,5:6);
 
 plot(Time7,FilterdMasterrps7)
 xlabel('Time');
 ylabel('Actual Master Rps');
 FilterdSlaverps7 = filter(b,a,Slaverps7);
 subplot(2,6,11:12);
 plot(Time7,FilterdSlaverps7)
 xlabel('Time');
 ylabel('Actual Slave Rps');
%  S2M = stepinfo(FilterdMasterrps2,Time2,2,'SettlingTimeThreshold',0.09)
%  S2S =stepinfo(FilterdSlaverps2,Time2,2,'SettlingTimeThreshold',0.097)
%  s2mse=abs(2-FilterdMasterrps2(end))
%  s2sse=abs(2-FilterdSlaverps2(end))
%  
%  
%   S3M = stepinfo(FilterdMasterrps3,Time3,3,'SettlingTimeThreshold',0.09)
%  S3S =stepinfo(FilterdSlaverps3,Time3,3,'SettlingTimeThreshold',0.09)
%   s3mse=abs(3-FilterdMasterrps3(end))
%   s3sse=abs(3-FilterdSlaverps3(end))
%   
%   S4M = stepinfo(FilterdMasterrps4,Time4,4,'SettlingTimeThreshold',0.09)
%  S4S =stepinfo(FilterdSlaverps4,Time4,4,'SettlingTimeThreshold',0.09)
%   s4mse=abs(4-FilterdMasterrps4(end))
%   s4sse=abs(4-FilterdSlaverps4(end))
%   
%   
%  
%   S5M = stepinfo(FilterdMasterrps5,Time5,5,'SettlingTimeThreshold',0.09)
%  S5S =stepinfo(FilterdSlaverps5,Time5,5,'SettlingTimeThreshold',0.09)
%   s5mse=abs(5-FilterdMasterrps5(end))
%   s5sse=abs(5-FilterdSlaverps5(end))
%   
%  
%   S6M = stepinfo(FilterdMasterrps6,Time6,6,'SettlingTimeThreshold',0.09)
%  S6S =stepinfo(FilterdSlaverps6,Time6,6,'SettlingTimeThreshold',0.09)
%   s6mse=abs(6-FilterdMasterrps6(end))
%   s6sse=abs(6-FilterdSlaverps6(end))
%  
%   S7M = stepinfo(FilterdMasterrps7,Time7,7,'SettlingTimeThreshold',0.09)
%  S7S =stepinfo(FilterdSlaverps7,Time7,7,'SettlingTimeThreshold',0.09)
%   s7mse=abs(7-FilterdMasterrps7(end))
%   s7sse=abs(7-FilterdSlaverps7(end))
% 
% 
% 
% 
%  
