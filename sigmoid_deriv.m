%sigmoid_deriv function, for acquiring derivative of sigmoid function

function [y] = sigmoid_deriv(x)
    sig = sigmoid(x);
    y = sig * (1-sig);
end