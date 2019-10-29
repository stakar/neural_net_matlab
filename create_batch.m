% creates set of examples to learn

function [x] = create_batch(n_cases,n_size)

    placeholder = zeros([n_size,n_size,n_cases],'int16');

    for n = 1:n_cases
        tmp = zeros([n_size,n_size]);
        startr = int16(randi([2,n_size-1],1,1));
        startc = int16(randi([2,n_size-1],1,1));
        tmp(startr-1:startr+1,startc) = 1;
        tmp(startr,startc-1:startc+1) = 1;
        placeholder(:,:,n) = tmp;
    end
    x = placeholder;
end
