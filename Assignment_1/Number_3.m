% Find the Given Matrix is Transitivity or not

% Declare the matrix
r = [1 0.8 0.4 0.5 0.8;0.8 1 0.4 0.5 0.9;0.4 0.4 1 0.4 0.4;0.5 0.5 0.4 1 0.5;0.8 0.9 0.4 0.5 1];

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
                for k = 1:m
                    if r(i,k) < min(r(i,j), r(j,k))
                        isTransitive = false;
                        return;
                    end
                end
            end
        end
    else
        isTransitive = false;
       return;
    end
end
