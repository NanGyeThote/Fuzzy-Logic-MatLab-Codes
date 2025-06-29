% Reflexivity of the Matrix

r = input("Enter the matrix: ");
sum1 = 0;

[m,n] = size(r);

if m == n
    for i =1:m 
        if r(i, i) ~= 1
            disp("The given matrix is irreflexive");
            sum1 = 1;
            break;
        end
    end
    if sum1 ~= 1
        disp("The given matrix is reflexive")
    end
end
