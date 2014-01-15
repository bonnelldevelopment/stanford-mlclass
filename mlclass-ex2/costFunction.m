function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
%J = zeros(size(theta)); 
J = 0; 
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

for j_temp = 1:size(theta),
    % Calculate cost function for each theta
%    for i = 1:m,
%      JT(j_temp)=JT(j_temp) + ( (-y(i) * log( sigmoid(theta(j_temp) * X(i,j_temp)))) - ( ( 1 - y(i) ) * log( 1 - sigmoid(theta(j_temp) * X(i,j_temp)))) );
%    end;
%    JT(j_temp)=JT(j_temp) / m;

    % calculate gradient of the cost 
    %for i = 1:m,
      %grad(j_temp)=grad(j_temp) + (sigmoid(theta(j_temp) * X(i,j_temp)) - y(i)) *  X(i,j_temp);
    %end;
    %grad(j_temp)=grad(j_temp) / m ;
    grad(j_temp) = sum( ( sigmoid(X * theta) - y ) .* X(:,j_temp)) /m;
end;
%JT
%J=sum(JT);
J= sum(log(sigmoid(X * theta)) .* -y -(ones(m,1)-y) .* log(ones(m,1)-sigmoid(X * theta))) / m;


%J
%grad



% =============================================================

end;
