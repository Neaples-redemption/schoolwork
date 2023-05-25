%%
clc; clear; close;
t = 0:pi/100:2*pi; % t的取值范围
y = sin(t); % 计算y = sin(t)
y1 = sin(t+0.25); % 计算y1 = sin(t+0.25)
y2 = sin(t+0.5); % 计算y2 = sin(t+0.5)
y3 = cos(t); % 计算y3 = cos(t)
y4 = cos(t+0.25); % 计算y4 = cos(t+0.25)
y5 = cos(t+0.5); % 计算y5 = cos(t+0.5)

plot(t, y, 'b', 'LineWidth', 1.5); % 绘制y = sin(t)曲线，蓝色实线
hold on;
plot(t, y1, 'r', 'LineWidth', 1.5); % 绘制y1 = sin(t+0.25)曲线，红色实线
plot(t, y2, 'g', 'LineWidth', 1.5); % 绘制y2 = sin(t+0.5)曲线，绿色实线
plot(t, y3, 'm', 'LineWidth', 1.5); % 绘制y3 = cos(t)曲线，洋红色实线
plot(t, y4, 'c', 'LineWidth', 1.5); % 绘制y4 = cos(t+0.25)曲线，青色实线
plot(t, y5, 'k', 'LineWidth', 1.5); % 绘制y5 = cos(t+0.5)曲线，黑色实线

xlabel('t'); % x轴标签
ylabel('y'); % y轴标签
title('Trigonometric Functions'); % 图形标题
legend('y = sin(t)', 'y1 = sin(t+0.25)', 'y2 = sin(t+0.5)', 'y3 = cos(t)', 'y4 = cos(t+0.25)', 'y5 = cos(t+0.5)'); % 图例

% 添加图形标注
gtext('y = sin(t)'); % 在y = sin(t)曲线添加标注
gtext('y1 = sin(t+0.25)'); % 在y1 = sin(t+0.25)曲线添加标注
gtext('y2 = sin(t+0.5)'); % 在y2 = sin(t+0.5)曲线添加标注
gtext('y3 = cos(t)'); % 在y3 = cos(t)曲线添加标注
gtext('y4 = cos(t+0.25)'); % 在y4 = cos(t+0.25)曲线添加标注
gtext('y5 = cos(t+0.5)'); % 在y5 = cos(t+0.5)曲线添加标注

%% text 版
t = 0:pi/100:2*pi; % t的取值范围
y = sin(t); % 计算y = sin(t)
y1 = sin(t+0.25); % 计算y1 = sin(t+0.25)
y2 = sin(t+0.5); % 计算y2 = sin(t+0.5)
y3 = cos(t); % 计算y3 = cos(t)
y4 = cos(t+0.25); % 计算y4 = cos(t+0.25)
y5 = cos(t+0.5); % 计算y5 = cos(t+0.5)

plot(t, y, 'b', 'LineWidth', 1.5); % 绘制y = sin(t)曲线，蓝色实线
hold on;
plot(t, y1, 'r', 'LineWidth', 1.5); % 绘制y1 = sin(t+0.25)曲线，红色实线
plot(t, y2, 'g', 'LineWidth', 1.5); % 绘制y2 = sin(t+0.5)曲线，绿色实线
plot(t, y3, 'm', 'LineWidth', 1.5); % 绘制y3 = cos(t)曲线，洋红色实线
plot(t, y4, 'c', 'LineWidth', 1.5); % 绘制y4 = cos(t+0.25)曲线，青色实线
plot(t, y5, 'k', 'LineWidth', 1.5); % 绘制y5 = cos(t+0.5)曲线，黑色实线

xlabel('t'); % x轴标签
ylabel('y'); % y轴标签
title('Trigonometric Functions'); % 图形标题
legend('y = sin(t)', 'y1 = sin(t+0.25)', 'y2 = sin(t+0.5)', 'y3 = cos(t)', 'y4 = cos(t+0.25)', 'y5 = cos(t+0.5)'); % 图例

% 添加图形标注
text(t(1), y(1), 'y = sin(t)', 'HorizontalAlignment', 'right'); % 在y = sin(t)曲线起始点添加标注
text(t(1), y1(1), 'y1 = sin(t+0.25)', 'HorizontalAlignment', 'right'); % 在y1 = sin(t+0.25)曲线起始点添加标注
text(t(1), y2(1), 'y2 = sin(t+0.5)', 'HorizontalAlignment', 'right'); % 在y2 = sin(t+0.5)曲线起始点添加标注
text(t(1), y3(1), 'y3 = cos(t)', 'HorizontalAlignment', 'left'); % 在y3 = cos(t)曲线起始点添加标注
text(t(1), y4(1), 'y4 = cos(t+0.25)', 'HorizontalAlignment', 'left'); % 在y4 = cos(t+0.25)曲线起始点添加标注
text(t(1), y5(1), 'y5 = cos(t+0.5)', 'HorizontalAlignment', 'left'); % 在y5 = cos(t+0.5)曲线起始点添加标注

%%
clc; close; clear;
xt = @(t) exp(-t/10) .* sin(5*t);
yt = @(t) exp(-t/10) .* cos(5*t);
zt = @(t) t;

figure;
fplot3(xt, yt, zt, [-12, 12]);
title('墨西哥帽顶曲线');
xlabel('X');
ylabel('Y');
zlabel('Z');

%%
clc; clear; close;
u = linspace(0, pi, 100); % 参数 u 的范围
v = linspace(0, pi, 100); % 参数 v 的范围
[U, V] = meshgrid(u, v); % 创建参数矩阵

% 计算坐标
x = (1 + cos(U)) .* cos(V);
y = (1 + cos(U)) .* sin(V);
z = sin(U);

% 使用 plot3 函数绘制
subplot(1, 3, 1);
plot3(x(:), y(:), z(:), 'b.');
title('Plot3');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal;

% 使用 mesh 函数绘制
subplot(1, 3, 2);
mesh(x, y, z);
title('Mesh');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal;

% 使用 surf 函数绘制
subplot(1, 3, 3);
surf(x, y, z);
title('Surf');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal;

% 调整子图布局
sgtitle('Three-Dimensional Surface');

%%
clc; clear; close;
t_chain = linspace(0, 2*pi, 100); % 参数范围（链）
t_gem = linspace(0, 2*pi, 200); % 参数范围（宝石）

% 链条
x_chain = sin(t_chain); % x坐标（链）
y_chain = cos(t_chain); % y坐标（链）
z_chain = cos(2*t_chain); % z坐标（链）

% 宝石
gem_radius = 0.1; % 宝石半径
x_gem = sin(t_gem); % x坐标（宝石）
y_gem = cos(t_gem); % y坐标（宝石）
z_gem = cos(2*t_gem); % z坐标（宝石）

figure;
hold on;
plot3(x_chain, y_chain, z_chain, 'r', 'LineWidth', 2); % 绘制链条部分（红色）
scatter3(x_gem, y_gem, z_gem, 20, 'b', 'filled'); % 绘制宝石部分（蓝色）
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Necklace');
grid on;
axis([-1 1 -1 1 -1 1]);
axis equal;
view(3);
daspect([0.5 0.3 1]); % 设置缩放比例




