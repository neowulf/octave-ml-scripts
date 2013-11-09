function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    
    % alpha = 1e-5; % increasing to positive
    %alpha = -1e-5; % going down but not converging >
    %alpha = -6e-5; % went back up <
    %alpha = -5e-5; % went back up < 6.77 up and slightly to the right
    %alpha = -4e-5; % going down 6.43
    %alpha = -1e-6; % going down 28.93
    alpha = -3e-7; % went up too fast

%== Connecting to ml-class ... iter: 1 cost: 148.14
%iter: 2 cost: 148.14
%iter: 3 cost: 148.13
%iter: 4 cost: 148.12
%iter: 5 cost: 148.11
%iter: 6 cost: 148.10
%iter: 7 cost: 148.09
%iter: 8 cost: 148.08
%iter: 9 cost: 148.07
%iter: 10 cost: 148.06

%== [ml-class] Submitted Assignment 1 - Part 3 - Gradi
%== Sorry, your answer was incorrect.




    cost = computeCost(X, y, theta);
    temptheta = theta - (alpha * cost);
    theta = temptheta;
    disp(sprintf('iter: %d cost: %0.2f', iter, cost))
    % disp(sprintf('iter: %d theta: %0.2f cost: %0.2f', iter, theta, cost))



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
