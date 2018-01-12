function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

m = size(X, 1);
num_labels = size(Theta2, 1);
 
p = zeros(size(X, 1), 1);
X = [ones(m, 1) X];

a_1 = sigmoid(X * Theta1');
% Adding column of ones for bias value of hidden layer
a_1 = [ones(m, 1) a_1];

a_2 = a_1 * Theta2';

[class, p] = max(sigmoid(a_2), [], 2);

end
