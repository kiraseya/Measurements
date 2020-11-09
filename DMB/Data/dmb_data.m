%%%% This file includes the antenna positions for all the different
%%%% positions of the antennas and for the measurements on different floors

%% UG 1
%% UG 1 - ant pos 1
% load('DMB_UG1_24_AntPos1.mat')
% load('DMB_UG1_58_AntPos1.mat')
 
% Antenna position 
% ap_x = 43.5;
% ap_y = - 16;
% ap_z = 3.08;
% z_pos = (4.05 - ap_z)*ones(size(signal_strength(1),1));

%% UG 1 - ant pos 2
% load('DMB_UG1_24_AntPos2.mat')
% load('DMB_UG1_58_AntPos2.mat')

% Antenna Position
% ap_x = 50;
% ap_y = - 27;
% ap_z = 5.3;
% z_pos = (4.05 - ap_z)*ones(size(signal_strength(1),1)); 

%% UG 2
%% UG 2 - ant pos 1
load('DMB_UG2_24_AntPos1.mat')
% load('DMB_UG2_58_AntPos1.mat')

ap_x = 25.5;
ap_y = -21.5;
ap_z = 3.08;
z_pos = (1.05 - ap_z)*ones(size(signal_strength(1),1));

%% change ap to center
x_pos = x_pos - ap_x;
y_pos = - y_pos - ap_y;

clear VarName2 VarName3 VarName7

%% define wall segments
%% UG 1 - ant pos 2
% c_wall are the concrete walls, m_wall are the metal curtains

% c_wall = [-28 -6.5 -4 -6.5;
%           -28 -6.5 -28 -5 ;
%           -28 -2 -28 5 ;
%           -22 -6.5 -22 1 ;
%           -22 5 -22 14 ;
%           -22 5 -28 5 ;
%           -22 5 -18 3 ;
%           -19 -2 -16 -2 ;
%           -18 -2 -18 1 ;
%           -14 -3 -12 -1 ;
%           -11 -5 -6.5 -5 ;
%           -15 1 -4 -6.5 ;
%           -5 -6 9 6.5 ;
%           9 6.5 26 6.5 ;
%           -2 13 5 7 ;
%           17.5 6.5 17.5 7.8 ;
%           17.5 8.8 17.5 18];
% m_wall = [-11 8 -17.5 14.5; -4 15 -11 21];
% column = [-15.5 1.5 -14.5 2.5;
%            -9.5 10.5 -8.5 11.5;
%            2 3 3 2;
%            9 11 10 10];

%% UG 1 - ant pos 1
% m_wall = [-13 6 -6 -1.6;
%           -3.5 10.5 3 3];
% c_wall = [5 1 11 -4];
% column = [-0.5 0 0 1];

%% UG 2 - ant pos 1
m_wall = [-4 -1 -10 5];
c_wall = [5 4 13 -3];
column = [-2 -4 -3 -3];

%% checking data

scatter(x_pos, y_pos, 20, signal_strength)
hold on
scatter(0,0,20)
for i = 1:size(c_wall,1)
plot([c_wall(i,1);c_wall(i,3)],[c_wall(i,2);c_wall(i,4)],'k');
end
for i = 1:size(m_wall,1)
plot([m_wall(i,1);m_wall(i,3)],[m_wall(i,2);m_wall(i,4)],'b');
end
for i = 1:size(column,1)
plot([column(i,1);column(i,3)],[column(i,2);column(i,4)],'k');
end

%% knowns for 2.4GHz
% freq = 2.4*10^9;
% tx_power = 15;
% tx_gain = 10;
% all_loss = 5;

%% knows for 5.8GHz
freq = 5.8*10^9;
tx_power = 10;
tx_gain = 9.27;
all_loss = 5;