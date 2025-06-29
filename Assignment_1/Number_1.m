% Find the Given Matrix is tolerance or not

% Declare the matrix
r = [1 1 0 0 0;1 1 0 0 1;0 0 1 0 0;0 0 0 1 0;0 1 0 0 1];

if checkReflexivity(r) && checkSymmetric(r)
    disp("The matrix is tolerance");
else
    disp("The matrix is NOT tolerance");
end

function isReflexive = checkReflexivity(r)
    [m,n] = size(r);
    isReflexive = true;

    if m == n
        for i = 1:m
            if r(i,i) ~= 1
                isReflexive = false;
                return;
            end
        end
    else
        disp("Matrix Must be squared")
        isReflexive = false;
        return;
    end
end

function isSymmetric = checkSymmetric(r)
    [m, n] = size(r);
    isSymmetric = true;

    if m == n
        for i = 1:m
            for j = 1:m 
                if r(i, j) ~= r(j, i)
                    isSymmetric = false;
                    return;
                end
            end
            if isSymmetric == false
                break;
            end
        end
    else
        disp("Matrix Must be squared")
        isSymmetric = false;
        return;
    end
end
