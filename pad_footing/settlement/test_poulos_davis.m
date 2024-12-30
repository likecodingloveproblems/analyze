assert_settlement = @(B, L, E, v, F, expected_settlement) assert(round(poulos_davis(B, L, E, v, F)) == expected_settlement, "calculated settlement is not equal to what is expected!")

% Dry Sand
% data is from wang and Kulhawy 2008
v = 0.3; % poisson ratio
E = 50; % MPa - elasticity modulus
F = 3000; % kN - Vertical load


% first example
disp('First test!')
D = 0.6; % m
B = 2.6; % m
L = B; % m
expected_settlement = 20;
assert_settlement(B, L, E, v, F, expected_settlement)

disp('Second test!')
% second example
D = 2.0;
B = 1.7;
L = 2.4;
expected_settlement = 25;
assert_settlement(B, L, E, v, F, expected_settlement)
disp("`Poulos and Davis`'s tests done successfully!")
