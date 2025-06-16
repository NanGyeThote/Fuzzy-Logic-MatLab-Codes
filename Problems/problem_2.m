% Define universe
U = [10 15 20 25];

% Define fuzzy sets A and B
A = [0.8 0.3 0.6 0.2];
B = [0.4 0.2 0.9 0.1];

% Complements
A_comp = 1 - A;
B_comp = 1 - B;

% A ∪ B
A_union_B = max(A, B);

% A ∩ B
A_int_B = min(A, B);

% Left side of DeMorgan's laws
comp_union = 1 - A_union_B;
comp_intersection = 1 - A_int_B;

% Right side of DeMorgan's laws
inter_comp = min(A_comp, B_comp);
union_comp = max(A_comp, B_comp);

% Display
disp('Verify DeMorgan''s Law:');
disp('¬(A ∪ B) vs ¬A ∩ ¬B');
disp([comp_union' inter_comp']);

disp('¬(A ∩ B) vs ¬A ∪ ¬B');
disp([comp_intersection' union_comp']);
