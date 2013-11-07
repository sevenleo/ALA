//desenha quadrado
function[] = desenhaQuad(M, u0)
    a=get("current_axes")
    Xmin=-0.5
    Ymin=-0.5
    Xmax=0.5
    Ymax=0.5
    a.data_bounds=[Xmin,Ymin;Xmax,Ymax]
   
    a.isoview="on"
    V = [0,1,1,0;0,0,1,1]
    U0=[u0',u0',u0',u0']
    C=(M*V+U0)/8
    //disp(C)
    
    //arestas
    xsegs( [C(1,2),C(1,3)] ,[C(2,2),C(2,3)] ) //direita
    xsegs( [C(1,1),C(1,4)] ,[C(2,1),C(2,4)] ) //esquerda
    xsegs( [C(1,1),C(1,2)] ,[C(2,1),C(2,2)] ) //base
    xsegs( [C(1,3),C(1,4)] ,[C(2,3),C(2,4)] ) //cima
    
    
endfunction





//fiz esta funcao para diminuir o numero de linhas da animacao 
function[] = pisca(tempo)
    sleep(tempo)
    clf()
    
endfunction



//animacao de letras
function[] = anima(tempo)
        
        //inicio
        titlepage(["Sopa de Letrinhas";"Leonardo Neves"])
        pisca(tempo*2)
        
        //I= 
        desenhaQuad([0.5, 0 ; 0, 2],[0,0])
        pisca(tempo)
        
        //I italico=
        desenhaQuad([0.5, 1 ; 0, 2],[0,0])
        pisca(tempo)

        //L=
        desenhaQuad([0, 0 ; 0, 2],[0,0]) 
        desenhaQuad([1, 0 ; 0, 0],[0,0])
        pisca(tempo)
        
        //F
        desenhaQuad([0, 0 ; 0, 2],[0,0])  
        desenhaQuad([1, 0 ; 0, 0],[0,2]) 
        desenhaQuad([0.5, 0 ; 0, 0],[0,1]) 
        pisca(tempo)
        
        //H
        desenhaQuad([0, 0 ; 0, 2],[0,0])  
        desenhaQuad([0, 0 ; 0, 2],[1,0])  
        desenhaQuad([1, 0 ; 0, 0],[0,1])  
        pisca(tempo)
         
        //T 
        desenhaQuad([0, 0 ; 0, 2],[0,0]) 
        desenhaQuad([2, 0 ; 0, 0],[-1,2]) 
        pisca(tempo)
        
        //T italico
        desenhaQuad([0, 1 ; 0, 2],[0,0]) 
        desenhaQuad([2, 0 ; 0, 0],[0,2]) 
        pisca(tempo)
        
        //LOSANGO
//        desenhaQuad([1, 1 ; -1, 1],[0,0])
//        desenhaQuad([2, 1; 0, 2],[0,0])
//        desenhaQuad([0, 1 ; 0, 2],[0,0]) 
//        desenhaQuad([0, -1 ; 0, 2],[0,0]) 
//        desenhaQuad([0, 1 ; 0, 2],[-1,2]) 
//        desenhaQuad([0, -1 ; 0, 2],[1,2])
//        pisca(tempo)
        
        //V
        desenhaQuad([0, 1 ; 0, 2],[0,0]) 
        desenhaQuad([0, -1 ; 0, 2],[0,0]) 
        pisca(tempo)
        
        //W
        desenhaQuad([0, 0.5 ; 0, 2],[0,0]) 
        desenhaQuad([0, -0.5 ; 0, 2],[0,0]) 
        desenhaQuad([0, 0.5 ; 0, 2],[-1,0]) 
        desenhaQuad([0, -0.5 ; 0, 2],[-1,0]) 
        pisca(tempo)
        
        //A        
        desenhaQuad([0, 0.5 ; 0, 2],[-1,0]) 
        desenhaQuad([0, -0.5 ; 0, 2],[0,0]) 
        desenhaQuad([0.5, 0 ; 0, 0],[-0.7,1])
        pisca(tempo)

        //fim
        titlepage(["fim"])

endfunction

anima(1000)

