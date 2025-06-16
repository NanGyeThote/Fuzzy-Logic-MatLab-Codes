% Define universe
U = [2 3 4 5 6];

% Define fuzzy sets A and B
A = [0.1 0.6 0.4 0.3 0.8];
B = [0.5 0.8 0.4 0.6 0.4];

% Complement of B
B_comp = 1 - B;

% Complement of A
A_comp = 1 - A;

% A ∩ B̅ (min between A and 1-B)
A_int_B_comp = min(A, B_comp);

% B ∩ A̅ (min between B and 1-A)
B_int_A_comp = min(B, A_comp);

% Display results
disp('A ∩ B̅:');
disp(array2table([U', A_int_B_comp'], 'VariableNames', {'x', 'A_int_B_comp'}));

disp('B ∩ A̅:');
disp(array2table([U', B_int_A_comp'], 'VariableNames', {'x', 'B_int_A_comp'}));
