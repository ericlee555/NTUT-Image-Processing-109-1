%EX2_107310135

%% Exercise 11
%11.1
x1=[1 1 0 0 1 1], x2=[0 0 0 ], x3=[-1 3 4 5], x4=zeros(3), x5=eye(4), x6=ones(3,2)

%11.2
all_zero_check(x1)
all_zero_check(x2)
all_zero_check(x3)
all_zero_check(x4)
all_zero_check(x5)
all_zero_check(x6)

%11.3
all_none_zero_check(x1)
all_none_zero_check(x2)
all_none_zero_check(x3)
all_none_zero_check(x4)
all_none_zero_check(x5)
all_none_zero_check(x6)

%11.4
any(x1(:))
any(x2(:))
any(x3(:))
any(x4(:))
any(x5(:))
any(x6(:))

%11.5
all(x1(:))
all(x2(:))
all(x3(:))
all(x4(:))
all(x5(:))
all(x6(:))




%% Exercise 15

%15.1
k = 0;
for n = (1:100),
    k = k + n;
    if k > 3841,
        break
    end
end
fprintf('%d', n)


%15.2
k = 0;
n = 0;
while k <= 3841,
    n = n + 1;
    k = k + n;
    
end
fprintf('%d', n);


%15.3
min(find(cumsum(1:100) > 3841))




%% Exercise 20
%20.1
close all;
t = linspace(0, 6, 100);
y1 = 2 * [3*exp(2*t) - exp(-2*t)] ./ [3*exp(2*t) + exp(-2*t)]
plot(t, y1);


%20.2
y2 = t + t .* exp(-1 ./ t);
figure(2);
plot(t, y1,'r-.', t, y2, 'go');
xlabel('t');
ylabel('Signal');
title('Two Signals');
legend('y1(t) = 2[3exp(2t)-exp(-2t)]/[3exp(2t)+exp(-2t)]', 'y2(t) = t + t exp(-1/t)');
grid on;
