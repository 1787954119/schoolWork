person = [];
mo = [];
mo_result = 0;
result = zeros(41,41);
for i = 1:41
    %person(end + 1) = sum(Data(i,2:11));
    for j = 2:11   
       mo_result = mo_result + (Data(i,j))^2;
    end
    mo(end + 1) = sqrt(mo_result);
    mo_result = 0;
end
mo_2 = mo';

for i = 1:41
    for j = 1:41
        t = (sum(Data(i, 2:11) .* Data(j, 2:11))) ./ (mo(i) .* mo_2(j));
        result(i, j) = t;
        if (t > 0.9)
            result(i, j) = 1;
        else
            result(i, j) = 0;
        end
    end
end

ans = 0;
ans_2 = 0;
group = [];

for i = 1:41
    group(end + 1) = i;
    for j = 1:41
         if result(i, j) == 1 && result(j, i) == 1
             ans = ans + 1;
             group(end + 1) = j;
         end
    end
    if ans >= 4
        ans_2 = ans_2 + 1; 
        for k = 1:length(group)
            disp(group); 
        end
        
    end
    ans = 0;
    group = [];
end
disp(ans_2)