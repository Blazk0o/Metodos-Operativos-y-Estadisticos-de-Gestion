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
res4
res5
res6
res7
res8
res9
res10
;

beneficio..      z =e= 4*x1-3*x2+6*x3-x4;
res1..           x1+x2 =l= 100000;
res2..           x3+x4 =l= 20000;
res3..           x1+x2 =g= 50000;
res4..           x3+x4 =g= 5000;
res5..           x1+x3 =l= 40000;
res6..           x2+x4 =l= 60000;
res7..           25*x1+15*x2 =l= 23*x1+ 23*x2;
res8..           25*x3+15*x4 =l= 23*x3+ 23*x4;
res9..           87*x1+98*x2 =g= 88*x1+ 23*x2;
res10..           87*x3+98*x4 =g= 3*x3+ 3*x4;
;


Model  Untitled_1 /all/;
Solve Untitled_1 using lp maximizing z;
