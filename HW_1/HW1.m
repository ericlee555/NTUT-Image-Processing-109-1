%%
h = 3-4j
disp(h)

abs(h)

angle(h)

conj(h)

[THETA, RHO] = cart2pol(real(h), imag(h))

j^j

%%
A = [37 6 3; 41 83 50; 52 3 12]
B = [7 1 10; 2 4 6; 3 5 9]
A*B
A.*B

C(:,:,1) = A
C(:,:,2) = B
C(2,2,:)

cat(3,A,B)

D = [A(1: 2, :); B(:, 1: 2)'; A(3: end, :)]
D = D(:, 1:2)
size(D)

%%
A = [1 5 7; 2 4 9; 3 6 12]
v = [A(:,1); A(:,2); A(:,3)]

v = reshape(A, [], 1)

v = A(:)

[row,col] = ind2sub(size(A), 8)

sum(A)
sum(A,1)
sum(A,2)
sum(A(:,:))
sum(sum(A,1),2)
sum(A(:))

%%
A = [39 38; 41 42]
B = [7 1; 2 4]
C = [1 5 7; 2 4 9; 3 6 12]
A*B
A.*B

max(A(:)) * min(B(:))

sum(A(:))

prod(B(:))

mean(A(:))
median(A(:))
mean(B(:))
median(B(:))
mean(C(:))
median(C(:))