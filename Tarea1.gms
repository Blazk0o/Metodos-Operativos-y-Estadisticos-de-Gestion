Free Variables
z
;

Positive variables
x1,x2,x3,x4
;

Equations
beneficio
res1
res2
res3
;

beneficio..      z =e= 43*x1+31*x2+47*x3+37*x4;
res1..           0.8*x1+0.3*x2+0.7*x3+0.4*x4=g=0.2;
res2..           0.1*x1+0.3*x2+0.1*x3+0.5*x4=g=0.2;
res3..           0.1*x1+0.4*x2+0.2*x3+0.1*x4=g=0.2;
;


Model  Untitled_1 /all/;
Solve Untitled_1 using lp minimizing z;
