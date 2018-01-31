% Assignment-1.1 Two 4x4 Matrices Addition
m_A = input('Row of Matrix A    = ');      
n_A = input('Column of Matrix A = '); 
A = zeros(m_A:n_A);
 
for i = 1:m_A
    for j = 1:n_A 
        A(i,j) = input('Enter the Elements of Matrix A = ')
    end
end
A=reshape(A,m_A,n_A);
 
m_B = input('Row of Matrix B    = ');      
n_B = input('Column of Matrix B = ');  
B = zeros(m_B:n_B);
 
for i = 1:m_B
    for j = 1:n_B 
        B(i,j) = input('Enter the Elements of Matrix B = ')
    end
end
B=reshape(B,m_B,n_B);

 
Sum_A_B = zeros(m_A:n_A);   % Or (m_B:n_B)
 
for i = 1:m_A
    for j = 1:n_A
      Sum_A_B(i,j) = A(i,j)+B(i,j)
    end
end
