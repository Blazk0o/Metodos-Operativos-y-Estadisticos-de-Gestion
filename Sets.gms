Sets
   i /1*4/
   j /1*4/;

Parameters
   c(i,j) /1.1 450, 1.2 320, 1.3 200, 1.4 550
          2.1 320, 2.2 150, 2.3 600, 2.4 300
          3.1 400, 3.2 500, 3.3 100, 3.4 370/;

Positive Variables
   x(i,j);

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
   res10;

beneficio.. z =e= sum(i, sum(j, c(i,j)*x(i,j)));
res1.. sum(j, x(1,j)) =l= 500;
res2.. sum(j, x(2,j)) =l= 700;
res3.. sum(j, x(3,j)) =l= 1500;
res4.. sum(i, x(i,1)) =g= 400;
res5.. sum(i, x(i,2)) =g= 600;
res6.. sum(i, x(i,3)) =g= 600;
res7.. sum(i, x(i,4)) =g= 900;
res8.. x(3,2) =g= h12*(600*x(1,2));
res9.. x(1,2) =l= 500*h12;
res10.. x(i,j) =g= 0;

Model Untitled_1 /all/;
Solve Untitled_1 using lp minimizing z;
