%sigmoid function activation

function [y] = sigmoid(x)
    y = 1/(1+exp(-x));
end