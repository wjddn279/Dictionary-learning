function D = dict_update(D, A, B)

iter = size(D,2);
for i = 1:1,
    for i = 1:iter,
        if A(i, i) == 0,
            u = D(:, i);
        else
            u = (B(:, i) - D*A(:,i)) / A(i,i) + D(:, i);
        end
        D(:,i) = (1.0 / max(norm(u, 2), 1)) * u;                
    end  
end
    
end