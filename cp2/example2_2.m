% contour and meshc of Gosenbrock function
clc;
clear;

[X1, X2] = meshgrid(-1.2:.2:1.2, -2:.2:5);
Z = 100 .* (X2 - X1 .^ 2) .^ 2 + (1 - X1) .^ 2;
hold off;
subplot(2,1,1);
meshc(X1, X2, Z);
xlabel('x1');
ylabel('x2');
hold on;
plot3(1,1,0,'*r');
subplot(2,1,2);
[C, h] = contourf(X1, X2, Z);
xlabel('x1');
ylabel('x2');
set(h,'ShowText', 'on', 'TextStep', get(h, 'LevelStep') * 2);
hold on;
plot(1,1,'*r');

% 
% function f = example2_2()
%     x1 = linspace(-1, 1, 200);
%     x2 = linspace(-2, 5, 700);
%     r = zeros(numel(x1), numel(x2));
%     for i = 1:numel(x1)
%         for j = 1:numel(x2)
%             r(i, j) = rosenbrock([x1(i), x2(j)]);
%         end
%     end
%     surf(x2,x1,r);
%     f = r;
% end
% 
% 
% function f = rosenbrock(x)
%     x1 = x(1);
%     x2 = x(2);
%     f = 100 * (x2 - x1 ^ 2) ^ 2 + (1 - x1) ^ 2;
% end