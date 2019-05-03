loadlibrary('dynamixel', 'dynamixel.h');
libfunctions('dynamixel');
DEFAULT_PORTNUM = 4; 
DEFAULT_BAUDNUM = 1;
%Default Setting
id = 1; % dynamixel id
P_GOAL_POSITION = 30;
P_PRESENT_POSITION = 36;

int32 GoalPos;
GoalPos = [0 1023];
%GoalPos = [0 4095] %for Ex Series
int32 index;
index = 1;
int32 PresentPos;
int32 Moving;
int32 CommStatus;

%%
% calllib('dynamixel', 'dxl_initialize', DEFAULT_PORTNUM, DEFAULT_BAUDNUM);
res = calllib('dynamixel','dxl_initialize',DEFAULT_PORTNUM,DEFAULT_BAUDNUM);
%%
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION,0);  
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION,500);
%%
degree = 0;
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION, 0 );
pause(3)
degree = 90;
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION, (round(degree*1024/300)-1) );
pause(3)
degree = 180;
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION, (round(degree*1024/300)-1) );
pause(3)
degree = 270;
calllib('dynamixel','dxl_write_word',id,P_GOAL_POSITION, (round(degree*1024/300)-1) );
