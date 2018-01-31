% Assignment-1.2 Random Number Generation, Linear Congruential Method (LCM).

format short;
n = input('Enter the Value of N  = '); 
a = input('Enter the Value of A  = ');
c = input('Enter the Value of C  = ');
m = input('Enter the Value of M  = ');
x0 = input('Enter the Value of X0 = ');

r = zeros(n:0);
x = 0;
temp = 0;
 
for i = 1:n
    temp = (a*x0)+c;
    x = rem(temp,m+i);              
    r(i) = x/(m+i);          % Built in Function randperm(m,n)
    r(i) = r(i)*1000;
    r(i) = int16(r(i))       % Converting it to Signed Integer (-2^15 to 2^15-1)

end
 
 
