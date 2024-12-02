free variables
z
;

binary variables
h12
;

set
i /1*3/
j /1*4/
;

parameters
c(i,j)
;

positive variables
x(i,j)
;

Equations
bene
res1
res2
res3
res4
res5
res6
res7
res8
res9
;


bene..           z =e=  sum(i,sum(j,c(i,j)*x(i,j)));
res1..           sum(j,x(1,j)) =l= 500;
res2..           sum(j,x(2,j)) =l= 700;
res3..           sum(j,x(3,j)) =l= 1500;
res4..           sum(i,x(i,1)) =g= 400;
res5..           sum(i,x(i,2)) =g= 600;
res6..           sum(i,x(i,3)) =g= 600;
res7..           sum(i,x(i,4)) =g= 900;
res8..           x(3,2) =g= h12*(600-x(1,2));
res9..           x(1,2) =l= h12*500


Model  Tarea5 /all/;
Solve Tarea5 using lp minimizing z;
