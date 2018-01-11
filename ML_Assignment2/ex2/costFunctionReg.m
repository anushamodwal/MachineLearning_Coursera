function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initializing 
m = length(y);  
J = 0;
grad = zeros(size(theta));

h = sigmoid(X * theta);
len = 2:length(theta);

J = ((1 / m) * sum((-1 * y .* log(h)) - ((1 - y) .* log(1 - h)))) + ((lambda / (2 * m)) * sum(theta(len) .* theta(len)));


grad = (1 / m) * (X' * (h - y));
grad(len) =  grad(len) + (lambda / m) * (theta(len));


end
