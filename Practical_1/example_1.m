% Define universe
X = [2 3 4 5];

% Define fuzzy set A & B (membership values)
A = [1, 0.5, 0.3, 0.2];         % A = [1/2, 0.5/3, 0.3/4, 0.2/5]
B = [0.5, 0.7, 0.2, 0.4];       % B = [0.5/2, 0.7/3, 0.2/4, 0.4/5]

% Perform fuzzy operations
A_union_B = max(A, B);
A_intersect_B = min(A, B);
A_complement = 1 - A;
B_complement = 1 - B;

% Display results
disp('A ∪ B =');
disp(A_union_B);

disp('A ∩ B =');
disp(A_intersect_B);

disp('Complement of A =');
disp(A_complement);

disp('Complement of A =');
disp(B_complement);
