function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression

m = length(y); % number of training examples
J = 0;
J = sum(power((X * theta - y), 2))/(2 * m);

end
