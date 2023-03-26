myself = Data(29, 2:11);
%result = [];
myself_2 = 0;
someone = 0;
for i=1:10 
    myself_2 = myself_2 + (myself(1, i)).^2;   
   end
for i = 1:41
   %result = result(result,myself .* Data(i,2:11));
   t = sum(myself .* Data(i, 2:11));
   for j=2:11
       someone = someone + (Data(i, j))^2;
   end
   show = t / (sqrt(myself_2) * sqrt(someone));
   if (show > 0.9)
       %sprintf("%s\n",Data(i,1));
       disp(Data(i, 2:4));
       %disp(show);
   end
   someone = 0;
end