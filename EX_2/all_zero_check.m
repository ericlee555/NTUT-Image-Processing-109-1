function all_zero_check(x)
zf = 1;
for i = x(:)',
    if i ~= 0,
        zf = 0;
    end
end
 
if zf == 0,
    fprintf('Matric has none zero element\n');
else
    fprintf('Matric has only zero element\n');
end
