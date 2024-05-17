clc; clear; close all;
IO =[0.01
0.01
0
0
0.01
0.01
0
0];
LS = [0.035
0.03
0.02
0
0.02
0.015
0.008
0];
CP = [0.05
0.04
0.03
0.02
0.025
0.02
0.01
0];
wcr = [IO(1:4),LS(1:4),CP(1:4)];
wocr = [IO(5:end),LS(5:end),CP(5:end)];
vgvo = [0,0.2,0.4,0.6];
figure(1);
subplot(1,2,1);
plot(vgvo,wcr(:,1)); hold on;
plot(vgvo,wcr(:,2)); 
plot(vgvo,wcr(:,3)); 
title('With continuity reinforcement >\frac{V_g}{2\phi f_y}')
subplot(1,2,2);
plot(vgvo,wocr(:,1)); hold on;
plot(vgvo,wocr(:,2)); 
plot(vgvo,wocr(:,3)); 
legend('Imediate occupancy', 'Collapse prevention', 'Life safety')
title("Without continuity reinforcement")