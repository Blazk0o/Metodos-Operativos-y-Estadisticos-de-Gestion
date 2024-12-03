
Free Variables
z
;

set
i  /1*4/
;

parameters
x(i)
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
;


beneficio..      z =e= sum(i ,x1+x2+x3+x4);
res1..           x1 =g= 2;
res2..           x1+x2 =g= 3;
res3..           x1+x2+x3 =g= 5;
res4..           x2+x3+x4 =g= 3;
res5..           x4 =e= 0;
;


Model  Tarea6 /all/;
Solve Tarea6 using lp minimizing z;
