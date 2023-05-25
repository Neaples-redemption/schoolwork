clc; clear; close;
t = 0:0.1:7;
x = t;
y = sin(t);
z = cos(t);
plot3(x,y,z)

%%
clc; clear close;
syms a t y
t=0:0.5:10
y=exp(-a.*t)
y1=subs (y, a, 0.1)
plot(t,y1,"--gx")
hold on
y2=subs(y, a, 0.2)
plot(t,y2,'-.ro')
hold on
y3=subs(y,a, 0.5)
plot(t,y3,'y*')
legend('y1','y2','y3')
gtext({'\leftarrowyl';'\leftarrowy2';'\leftarrowy3'})

%%
clc; clear close;
[x,y] = meshgrid(-2:0.1:2);
z = x.*exp(-x.^2-y.^2);

subplot(2,2,1)
plot3(x,y,z)
title('三维线图')

subplot(2,2,2)
mesh(x,y,z)
title('网线图')

subplot(2,2,3)
surf(x,y,z)
title('表面图')

subplot(2,2,4)
surfl(x,y,z)
title('带渲染效果的表面图')

%%
clc; clear close;
syms x;
f1 = limit(-x+1, x, 0, 'left');
f2 = limit(x+1, x, 0, 'right');
x1 = 0:0.01:1;
y1 = -x1 + 1;
x2 = -1:0.01:0;
y2 = x2 + 1;
plot(x1, y1, x2, y2);
axis([-1.5 1.5 -1.5 1.5]);



