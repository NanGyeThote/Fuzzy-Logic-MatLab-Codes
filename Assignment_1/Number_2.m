% Find the Given Matrix is Transitivity or not

% Declare the matrix
r = [1 1 0 0 1;1 1 0 0 1;0 0 1 0 0;0 0 0 1 0;1 1 0 0 1];

if checkTransitivity(r)
    disp("The matrix is transitive");
else
    disp("The matrix is NOT transitive");
end

function isTransitive = checkTransitivity(r)
    [m,n] = size(r);
    isTransitive = true;

    if m == n
        for i = 1:m
            for j = 1:m
                if r(i, j) == 1
                    for k = 1:m
                        if r(j,k) == 1 && r(i,k) ~= 1
                            isTransitive = false;
                            return;
                        end
                    end
                end
            end
        end
    else
        isTransitive = false;
       return;
    end
end
