function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
idx = zeros(size(X,1), 1);
min_distance = 9999;

for i = 1:size(X, 1)
    for k = 1:K
        distance = sqrt(sum( power( X(i, :) - centroids(k, :), 2 )));
        if(distance < min_distance)
            min_distance = distance;
            closest_centroid = k;
        end
    end
    min_distance = 9999;
    idx(i) = closest_centroid;
end

end

