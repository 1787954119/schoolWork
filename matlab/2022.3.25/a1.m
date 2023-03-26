a = [1, 1];
b = [];

for i = 3:205 %计算 Fibonacci 数列
   a(i) = a(i - 1) + a(i - 2); 
end

for i = 1:200
    b(i) = a(i + 1) / a(i);
end

for_draw_use = [b(10), b(50), b(100), b(200)];
index = [10, 50, 100, 200];

%scatter(index, for_draw_use)

syms n;
an_2 = (((1 + sqrt(5) / 2))^n - ((1 - sqrt(5) / 2)))^n;
an_1 = (((1 + sqrt(5) / 2))^(n - 1) - ((1 - sqrt(5) / 2))^(n - 1));
result = limit (an_2 / an_1, n, Inf);
disp(result)

