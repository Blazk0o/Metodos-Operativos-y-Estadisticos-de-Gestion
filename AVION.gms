Sets
    i   tipos de aviones  / A1, A2, A3 /
    j   aldeas           / V1, V2, V3, V4, V5 /
;

Parameters
    c(i,j)   capacidad de transporte del avión i a la aldea j
    / A1.V1 10, A1.V2 8, A1.V3 6, A1.V4 9, A1.V5 12
      A2.V1 5, A2.V2 3, A2.V3 8, A2.V4 4, A2.V5 10
      A3.V1 7, A3.V2 9, A3.V3 6, A3.V4 10, A3.V5 4 /
    n(i)   número máximo de viajes del avión i
    / A1 50, A2 90, A3 60 /
    d(j)   demanda 
    / V1 100, V2 80, V3 70, V4 40, V5 20 /
;

Variables
    x(i,j)   
    z       
;

Positive Variable x;

Equations
    objetivo   
    capacidad(i)       
    demanda(j)   
;

objetivo..   z =e= sum((i,j), c(i,j)*x(i,j));
capacidad(i)..   sum(j, x(i,j)) =l= n(i);
demanda(j)..   sum(i, c(i,j)*x(i,j)) =g= d(j);

Model transporte /all/;
Solve transporte using LP maximizing z;

Display x.l, z.l;