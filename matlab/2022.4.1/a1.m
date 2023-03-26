left = 0;
right = pi / 2;
mid = (left + right) / 2;
result = f(mid);
while (result ~= 0)
    if (f(left) * result < 0)
        right = mid;
    else
        left = mid;
    end
    mid = (left + right) / 2;
    result = f(mid);
end

fprintf("The result is %.6f\n", mid);
%round(mid, 6)