function output = myisprime(n)
output = 1;    
if n ~= 2,
    for i = (2: n/2 + 1),
        if mod(n,i) == 0,
            output = 0;
        end
    end
end



