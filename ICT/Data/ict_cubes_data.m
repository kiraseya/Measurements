%% Data for ICT cubes

%% Ant pos 2
% load('All_24_antpos2.mat')
% load('All_58_antpos2.mat')

% load('ICT1_24_antpos2_doorsclosed.mat')
% load('ICT1_58_antpos2_doorsclosed.mat')
% x_pos = - x_pos + 45;
% y_pos = y_pos - 5.4;

% ant pos 2
% ap_x = 5.75;
% ap_y = 19.5;
% ap_z = 2.4;

%% Ant pos 1
% load('ICT1_24_antpos1.mat')
% x_pos = - x_pos + 44.4;
% y_pos = y_pos - 5.28;

load('ICT1_58_antpos1.mat')
x_pos = - x_pos + 45;
y_pos = y_pos - 5.4;

% % antpos 1
ap_x = 4;
ap_y = 1.5;
ap_z = 2.2;

%% define wall segments
% run ict_cubes_1
run ict_cubes_layout
z_pos = 0.9;

% Data visualization
figure
scatter(x_pos, y_pos, 20, signal)
hold on
title({'ICT cubes Measurement Data','5.3 GHz, Antenna Position 2'},'fontsize',18)
ax = gca;
ax.FontSize = 16; 
for i = 1:size(inner_wall,1)
    plot([inner_wall(i,1);inner_wall(i,3)],[inner_wall(i,2);inner_wall(i,4)],'k');
end

for i = 1:size(thick,1)
    plot([thick(i,1);thick(i,3)],[thick(i,2);thick(i,4)],'r');
end

for i = 1:size(outer_wall,1)
    plot([outer_wall(i,1);outer_wall(i,3)],[outer_wall(i,2);outer_wall(i,4)],'k');
end

for i = 1:size(glass,1)
    plot([glass(i,1);glass(i,3)],[glass(i,2);glass(i,4)],'b');
end
plot(ap_x,ap_y,'k^')
colorbar

%% Axis and colorbar labels and setting all colorbar ranges the same 
% xlabel('x, m')
% ylabel('y, m')
% caxis([-100 -30])
% c = colorbar;
% c.Label.String = 'Received Signal Strenght, dBm';


%% knowns for 2.4GHz
% f = 2.44e9;
% %tx_power = 15;
% tx_gain = 10 + 15;
% all_loss = 5;

%% knows for 5.8GHz
f = 5.32e9;
% tx_power = 10;
tx_gain = 9.27 + 10;
all_loss = 5;
