function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);
centroidsCount = zeros(K);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for l1 = 1:m
   centroidsCount(idx(l1)) += 1;  % increment so can divide to get average at the end
   for l2 = 1:n
     centroids(idx(l1),l2) += X(l1,l2);
   endfor
endfor

for l3 = 1:K
  for l4 = 1:n
   centroids(l3,l4) = centroids(l3,l4) / centroidsCount(l3);
  endfor
endfor







% =============================================================


end

