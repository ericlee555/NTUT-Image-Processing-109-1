%%
X = [1 5 7; 2 4 9; 3 6 12]
A = X([1 3], :)
B = X(:, [1 3])
A * B

%%
C = X 
C(3,2) = 8

%%
y = X(2,:)
D = [X y']

%%
size(D)
length(D)
numel(D)

 %%
E = flipud(fliplr(X))
X'

%%
F = rot90(X, -1)

%%
tmp = X(1, 2)
X(1, 2) = X(2, 2)
X(2, 2) = tmp

%%
sum((1: 100).^(1/2))

%%
A = [ 15 36 19 11 13 53 10 22 35 23 84 91 65 42 66 77]
sum(A)
mean(A)
median(A)

 %%
B = reshape(sort(A), 4, 4)'
 
 %%
sum(reshape(B, 1, [])) 
mean (reshape(B, 1, []))
median (reshape(B, 1, []))

%%
ndims(B)
numel(B)

