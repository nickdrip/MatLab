% Test file fire stat

for(k = 1:1:50)
x = 0:1:10;
y = log(randperm(length(x))).*sin(randperm(length(x)));

p = polyfit(x,y,9);
est_y = polyval(p,x);

plot(x,y,x,est_y);

pause(.5)
R2 = stat(y,est_y)
pause(.0)
end