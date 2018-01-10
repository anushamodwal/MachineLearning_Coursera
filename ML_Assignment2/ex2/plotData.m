function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

%Given Solution
%pos = find(y==1);
%neg = find(y==0);

%Alternate my intutive solution
for i = 1:size(y,1)
	if(y(i) == 1)
		plot(X(i,1), X(i,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
	else
		plot(X(i,1), X(i,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
	endif
end

hold off;

end
