%Ten kod s³u¿y jako æwiczenie pracy z matrycami w MATLAB

n_size = 5;
n_samples = 100;

target = create_batch(n_samples,n_size);
noise = create_noise(n_samples,n_size);

train_raw = cat(3,target,noise);

train_data = reshape(train_raw,[n_size*n_size,n_samples*2]);
