L=[1 1 1 -1; 4 2 1 4 ; 9 3 1 7]

function [A]=eliminacao(A)
    disp(A)
    [m,n]=size(A)
    k=min(m-1,n-1)
    for j =1:k
        for i=j+1:m
            if A(i,j)~= 0 then
                  c= A(i,j)/A(j,j)
                  A(i,:)=A(i,:)-(c*A(j,:));
            end
        end
    end
endfunction


function [B] = subreversa(A)
        disp(A)
    [m,n]=size(A)
    B=ones(1,n)
    k=min(m-1,n-1)
    for l =k:1
        for c=l+m:1
            B(1,c)=A(l,c)
        end
    end
endfunction
