% Calculates J, K, & R^2 Values

function [r2] = stat(y,est_y)

for k=1:1:length(y)
   J = sum((est_y - y).^2); 
end

mu = mean(y);
for k=1:1:length(y)
   S = sum((y - mu).^2); 
end

r2 = 1 - J/S;

J = round(J);
S = round(S);


% gtext(['R^2 = ', num2str(r2)])
% gtext(['J = ', num2str(J)])
% gtext(['S = ', num2str(S)])

end