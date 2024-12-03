Free Variables
z
;

Positive variables
x1,x2,x3
;

Equations
beneficio
res1
res2
res3
;

beneficio..      z =e= 100000*x1+18000*x2+40000*x3;
res1..           2000*x1+300*x2+600*x3=l=18500;
res2..           0.5*x1+0.5*x2+0.5*x3=e=x2;
res3..           0.1*x1+0.1*x2+0.1*x3=l=x1;
;


Model  Untitled_1 /all/;
Solve Untitled_1 using lp maximizing z;
