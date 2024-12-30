FS = @(Qult, F) Qult / F;
assert_FS = @(B, L, D, phi, gama, F, expected_FS) assert(round(FS(vesic(B, L, D, phi, gama), F) * 10) / 10 == expected_FS, "first example of vesic bearing capacity")

% Dry Sand
% data is from wang and Kulhawy 2008
gama = 18.5; % KN/m3 -> unit weight
phi = 35; % degree -> effective friction angle
v = 0.3; % poisson ratio
E = 50; % MPa - elasticity modulus
F = 3000; % kN - Vertical load
FS_r = 3; % required factor of safety
epsi_r = 25; % mm - allowable settlement


% first example
disp('First test!')
D = 0.6; % m
B = 2.6; % m
L = B; % m
assert_FS(B, L, D, phi, gama, F, 3.1)

disp('Second test!')
% second example
D = 2.0;
B = 1.7;
L = 2.4;
assert_FS(B, L, D, phi, gama, F, 3.8);
disp("Vesic's tests done successfully!")
