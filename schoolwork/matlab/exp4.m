clear; close all; clc; 
% 输入数据
t = [1949, 1954, 1959, 1964, 1969, 1974, 1979, 1984, 1989, 1994];
p = [541.65, 602.67, 672.1, 704.99, 806.71, 908.59, 975.42, 1034.75, 1106.76, 1176.74];

% 绘制人口数随时间变化的图像
plot(t, p, 'o-')
xlabel('年份')
ylabel('人口数（百万）')
title('人口数随时间变化的图像')
grid on  // 打开网格
% 多项式拟合
pfit = polyfit(t, p, 1);

% 输出拟合结果
disp('拟合结果：')
disp(['y = ' num2str(pfit(1)) 'x + ' num2str(pfit(2))])

% 使用拟合结果估算 1999 年的人口数
p1999 = polyval(pfit, 1999);
disp(['1999 年的人口数估计为：' num2str(p1999)])

%%
clear; close all; clc;

% 输入数据
x = [1, 2, 4, 7, 9, 12, 13, 15, 17];
y = [1.5, 3.9, 6.6, 11.7, 15.6, 18.8, 19.6, 20.6, 21.1];

% 进行3次多项式拟合
p3 = polyfit(x, y, 3);
yfit3 = polyval(p3, x);
% 绘制拟合曲线
plot(x, y, 'o', x, yfit3, '-')
legend('原始数据', '3次拟合曲线')

% 进行5次多项式拟合
p5 = polyfit(x, y, 5);
yfit5 = polyval(p5, x);
% 绘制拟合曲线
figure
plot(x, y, 'o', x, yfit5, '-')
legend('原始数据', '5次拟合曲线')

%%
clear; close all; clc;
% 定义拟合函数
f = @(x) sin(x);

%这个是MATLAB中的函数句柄（Function Handle），可以将一个函数赋值给一个变量，以便在程序中方便地调用这个函数。
%在这个例子中，@符号后面的x表示这个函数的自变量，即输入的变量，而函数体sin(x)表示函数对输入变量的处理过程，即求x的正弦值。
%将这个函数句柄赋值给f变量，就可以通过f(x)来调用这个函数，例如f(pi/2)就相当于sin(pi/2)，返回结果为1。

% 定义拟合数据点的x坐标和y坐标
n = 100; % 采样点个数
x = linspace(0, pi/2, n);
y = f(x);

% 进行5阶多项式拟合
m = 5; % 多项式阶数
A = zeros(n, m+1);
for i = 1:n
    A(i, :) = [1, x(i), x(i)^2, x(i)^3, x(i)^4, x(i)^5];
end
p = A \ y'; % 使用“\”运算符求解线性方程组

% 绘制拟合曲线和原始数据
plot(x, y, '.', x, polyval(p, x), '-')
legend('原始数据', '拟合曲线')

%% 
clear; close all; clc;
x = [0 0.5 1 1.5 2 2.5];
y = [2.0 1.0 0.9 0.6 0.4 0.3];
scatter(x, y, 'filled');

%数据大致呈现出一条下降的直线趋势，因此可以考虑使用一次函数进行拟合，即拟合直线方程 y = kx + b

x = [0 0.5 1 1.5 2 2.5];
y = [2.0 1.0 0.9 0.6 0.4 0.3];

n = length(x); % 数据个数
A = [x' ones(n, 1)]; % 构造系数矩阵
b = y'; % 构造常数项向量

% 使用最小二乘法求解拟合直线方程的系数
coefficients = inv(A' * A) * A' * b;

% 输出拟合直线方程的系数
fprintf('拟合直线方程为: y = %.2f x + %.2f\n', coefficients(1), coefficients(2));

% 绘制拟合直线图像
xx = linspace(0, 3);
yy = coefficients(1) * xx + coefficients(2);
hold on;
plot(xx, yy, 'r');
legend('原始数据', '拟合直线');



