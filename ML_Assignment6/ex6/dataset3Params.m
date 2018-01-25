function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

C = 1;
sigma = 0.3;
min_error = 999;

for C_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
    for sigma_values = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
        model = svmTrain(X, y, C_values, @(x1, x2) gaussianKernel(x1, x2, sigma_values));
        predictions = svmPredict(model, Xval);
        error = mean(double(predictions ~= yval))
        if(error < min_error)
            min_error = error;
            C = C_values;
            sigma = sigma_values;
        end
    end
end

end
