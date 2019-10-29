% create_noise function

function [x] = create_noise(n_cases,n_size)
    placeholder = zeros([n_size,n_size,n_cases],'int16');
    for n = 1:n_cases
        tmp = zeros([n_size,n_size]);
        n_times = int16(randi([1,n_size*2],1,1));
        for t = 1:n_times
            uno = int16(randi([1,n_size],1,1));
            duo = int16(randi([1,n_size],1,1));
            tmp(uno,duo) = 1;
        end
        placeholder(:,:,n) = tmp;
    end
    x = placeholder;
end