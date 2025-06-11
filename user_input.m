% Second Method with User Input Function

% Collecting fuzzy sets u & v from user input
u = input('Enter the first metrix: ');
v = input('Enter the second metrix: ');

% Asking user what action want to perform
option = input('Enter the option(1. Union 2. Intersection 3. Complement): ');

% Condtional Statement

% Option 1 for Union
if (option == 1)
    w = max(u, v);

    % Display Union of u & v
    disp('A ∪ B = ');
    disp(w);
end

% Option 2 for Intersection
if (option == 2)
    p = min(u, v);

    % Display Intersection of u & v
    disp('A ∩ B = ');
    disp(p);
end

% Option 3: choosing which sets to get Complement

if (option == 3)
    option1 = input("Enter whether to find complement for 1. first matrix or 2. second matrix: ");

    % To get the Complement of u
    if (option1 == 1)
        [m, n] = size(u);
        q = ones(m) - u;

        % Display Complement of u matrix
        disp('Complement of u =');
        disp(q);

    % To get the Complement of v
    else
        [m, n] = size(v);
        q = ones(m) - v;

        % Display Complement of v matrix
        disp('Complement of v =');
        disp(q);
    end
end