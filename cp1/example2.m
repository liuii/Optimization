% Cobb-Douglas efficiency function
clc
clear

a1 = 0.5;
a2 = 0.5;

x1 = linspace(0, 6, 100)';

u = 1:0.5:6;
x2 = zeros(numel(x1), numel(u));
for i = 1:numel(u)
    x2(:,i) = power(u(i) ./ power(x1, a1), 1/a2);
end

b = 10;
c = [1.1, 1.8];
x3 = (b - c(1) .* x1) ./ c(2);

hold off;
plot(x1, x2);
axis([0, 6, 0, 6]);
legend(num2str(u'));
hold on;
plot(x1, x3, '--r');