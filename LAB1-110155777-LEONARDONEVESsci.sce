function[] = desenhaQuad(M, u0)
    a=get("current_axes")
    //Xmin=-0.5
    //Ymin=-0.5
    //Xmax=0.5
    //Ymax=0.5
    //a.data_bounds=[Xmin,Ymin;Xmax,Ymax]
    a.data_bounds=[-0.5,-0.5;0.5,0.5]
    a.isoview="on"
    V = [0,1,1,0;0,0,1,1]
    U0=[u0',u0',u0',u0']
    C=(M*V+U0)/8
    
    xsegs( [C(1,2),C(1,3)] ,[C(2,2),C(2,3)] ) //direito
    xsegs( [C(1,1),C(1,1)] ,[C(2,1),C(2,4)] ) //esquerdo
    xsegs( [C(1,1),C(1,2)] ,[C(2,1),C(2,2)] ) // base
    xsegs( [C(1,3),C(1,4)] ,[C(2,3),C(2,4)] ) //cima
    
 //  n=4
 //   for i = 1:n
 //       for j = 1:n
 //           xsegs( [C(),C()] ,[C(),C()] )
 //       end
 //   end; 
 
    disp(C)
endfunction



