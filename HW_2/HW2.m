%% Exercise 12
%12.1
x = [0.8 -0.2 1.9 2.1 1.5 0.2 0.9 1.2 1.3 0.1];
y = [];
 
for i = x,
    if i > 1,
        y(end+1) = i;
    end
end
 
y

%12.2
y = x(find(x > 1))





%% Exercise 13
%13.1
x = [0.8 -0.2 1.9 2.1 1.5 0.2 0.9 1.2 1.3 0.1]
y = [];
 
for i = x,
    if i > 1,
        y(end+1) = 1;
    elseif i < 1,
        y(end+1) = 0;
    end
end
 
y

%13.2
y = x > 1





%% Exercise 18
%18.1
myisprime (96)
myisprime (97)


%18.2
myisprime2 = @(x) all(mod(x, (2:x/2)));
myisprime2(96)
myisprime2(97)





%% Exercise 19
%19.1
x = linspace(0 , 8, 33)
y = 3*x + 2;
subplot(2, 2, 1);
plot(x, y);

%19.2
x = linspace(0 , 2, 21)
y = exp(-x.^2);
subplot(2, 2, 2);
plot(x, y);

%19.3
x = linspace(0 , 2*pi, 21)
y = cos(x);
subplot(2, 2, 3);
plot(x, y);

%19.4
x = linspace(0 , 4, 9)
y = (log(exp(x))) .^ -1
subplot(2, 2, 4);
plot(x, y);

