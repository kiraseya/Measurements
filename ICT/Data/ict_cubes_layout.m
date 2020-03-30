%% ICT cubes 
   
%% ICT cubes 2
outer_wall = [ 0 0 25 0
               25 0 25 25
               0 25 25 25];
inner_wall = [ 5 0.5 5 4.5
               11.5 0.5 11.5 4.5
               18 0 18 6
               18 7 18 11
               18 10 25 10
               18 12 18 19
               18 20 18 25
               18 20 15.25 20
               14.25 20 11.5 20
               13.5 20 13.5 25
               10.5 20 7.75 20
               10 20 10 25
               6.75 20 6 20
               6 20 6 25
               0 20 5 20
               5 20 5 18
               5 17 5 13
               0 16.5 5 16.5
               5 12 5 11.5
               11 12 16.5 12
               11 16 16.5 16
               14.5 16 14.5 18];
          
glass = [ 5 4.5 5 5
          5 5 18 5
          11.5 4.5 11.5 5
          5 0 5 0.5
          11.5 0 11.5 0.5];
      
doors = [ ];
thick = [ 0 8 1 8
          2.25 8 2.75 8
          3.5 8 5 8
          4.25 8 4.25 11.5
          0 11.5 5 11.5
          6.5 9.5 6.5 8
          6.5 8 9.5 8
          11 8 11 18
          11 8 16.5 8
          16.5 8 16.5 10.5
          16.5 12 16.5 13
          16.5 14.5 16.5 18
          16.5 18 15.5 18
          13.5 18 14.5 18
          11 18 11.5 18
          6.5 11 6.5 18
          6.5 17 11 17];

% rotation
theta = -5;
R=[cosd(theta) -sind(theta); sind(theta) cosd(theta)];
inner_wall(:,1:2)=inner_wall(:,1:2)*R';
inner_wall(:,3:4)=inner_wall(:,3:4)*R';
outer_wall(:,1:2)=outer_wall(:,1:2)*R';
outer_wall(:,3:4)=outer_wall(:,3:4)*R';
glass(:,1:2)=glass(:,1:2)*R';
glass(:,3:4)=glass(:,3:4)*R';
thick(:,1:2)=thick(:,1:2)*R';
thick(:,3:4)=thick(:,3:4)*R';

% offset
outer_wall = outer_wall + reshape(repmat([30 16.5 30 16.5], size(outer_wall,1),1),size(outer_wall));
inner_wall = inner_wall + reshape(repmat([30 16.5 30 16.5], size(inner_wall,1),1),size(inner_wall));
glass = glass + reshape(repmat([30 16.5 30 16.5], size(glass,1),1),size(glass));
thick = thick + reshape(repmat([30 16.5 30 16.5], size(thick,1),1),size(thick));


%% ICT Cube 1

outer_wall = [ outer_wall
               0 0 0 25
               0 0 25 0
               25 0 25 16.25
               25 20 25 25
               0 25 25 25
               30 16.5 30.25 18
               30.5 21.5 32.18 41.4];
inner_wall = [ inner_wall
               5 0 5 5
               5 5 7 5
               8 5 9.25 5
               8.5 0 8.5 5
               10.25 5 13 5
               12.5 0 12.5 5
               14 5 17 5
               16 0 16 5
               18 5 20 5
               20 0 20 5
               20 6.25 25 6.25
               0 6.25 5 6.25
               5 6.25 5 8
               5 9 5 10
               0 9.5 5 9.5
               5 11 5 13.75
               0 13 5 13
               0 17 5 17
               5 14.75 5 18
               5 19 5 25
               20 6.25 20 8.5
               20 9.5 20 13
               20 10 25 10
               20 14 20 16
               21 16 25 16
               10 21 10 25
               15 21 15 24
               20 21 20 24
               6.5 7 7.75 7
               9 7 10 7
               6.5 7 6.5 10
               6.5 9 14 9
               6.5 11 6.5 17
               6.5 12 14 12
               7.5 15 10 15
               13 15 14 15
               10 15 12 15
               11 7 12 7
               12 7 12 9
               14 7 18 7];
glass = [ glass
          5 20 25 20
          10 20 10 21
          15 20 15 21
          20 20 20 21
          25 16 25 16.25
          25 16.25 30.25 18
          25 20 30.5 21.5
          15 24 15 25
          20 24 20 25];
doors = [ doors
          5 5 5 6.25
          5 8 5 9
          5 10 5 11
          5 13.75 5 14.75
          5 18 5 19
          6.5 17 7.5 17
          6.5 10 6.5 11
          6.5 15 7.5 15
          7 5 8 5
          12 17 13 17
          12 15 13 15];

thick = [ thick
          10 7 10 9
          10 12 10 17
          7 17 12 17
          13 17 14 17
          13 7 14 7
          14 7 14 17
          15 17 18 17
          18 15 18 17
          18 14 18 7
          14 8.5 18 8.5];
      
% figure
% hold on
% for i = 1:size(outer_wall,1)
%      plot([outer_wall(i,1);outer_wall(i,3)],[outer_wall(i,2);outer_wall(i,4)],'k');
% end
% for i = 1:size(inner_wall,1)
%      plot([inner_wall(i,1);inner_wall(i,3)],[inner_wall(i,2);inner_wall(i,4)],'k');
% end
% for i = 1:size(glass,1)
% plot([glass(i,1);glass(i,3)],[glass(i,2);glass(i,4)],'b');
% end
% for i = 1:size(thick,1)
% plot([thick(i,1);thick(i,3)],[thick(i,2);thick(i,4)],'r');
% end
% 
% title({'ICT cubes Layout'},'fontsize',18)
% ax = gca;
% ax.FontSize = 16;
% L(1) = plot(nan, nan, 'k');
% L(2) = plot(nan, nan, 'b');
% L(3) = plot(nan, nan, 'r');
% legend(L, {'Wall','Glass','Reinforced Concrete'})