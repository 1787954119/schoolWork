result=0; 
for i=1:20  
 
 sum=1; 
 
for j=1:i     %计算第i个数的阶乘
 
sum=sum*j; 
 
end
 
 result = result + sum;        %所有阶乘相加
 
 end

disp(result)
