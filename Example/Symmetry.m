% Symmetry 
r = input("Enter the matrix: ");
sum1 = 0;

[m,n] = size(r);

if m == n
    for i = 1:m
        for j = 1:n
            if r(i,j) ~= r(j,i)
                disp("The matrix is not symmetric");
                sum1 = 1;
                break;
            end
        end
        if sum1 == 1
            break;
        end
    end
    if sum1 ~= 1
        disp("The given matrix is symmetric");
    end
else
    disp("Matrix is not square. Symmetric is undefined")
end