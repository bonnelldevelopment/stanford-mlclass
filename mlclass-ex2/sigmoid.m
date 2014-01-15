function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

for x = 1:columns(z),
  for y = 1:rows(z),
    g(y,x)=1/(1 + exp( -z(y,x)));
  end;
end;


% =============================================================

end
