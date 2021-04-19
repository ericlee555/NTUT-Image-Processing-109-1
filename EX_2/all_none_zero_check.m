function all_none_zero_check(x)
    nzf = 1;
    for i = x(:)',
        if i == 0,
            nzf = 0;
        end
    end
 
    if nzf == 0,
        fprintf('Matric has zero element\n');
    else
        fprintf('Matric has only none zero element\n');
    end

