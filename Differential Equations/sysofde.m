syms x(t) y(t) z(t) w(t)
Fa=300;     		%(N)
M1=750;     		%(Kg)
M2=750; 			%(Kg)
B1=20;     			%(Nsec/m)
B2=20;			%(Nsec/m)
B3=30; 			%(Nsec/m)
K1=15;      		%(N/m)
K2=15;      		%(N/m)		
eqn01 = diff(x) ==  y;
eqn02 = diff(y) == (-K2/M2)*x -((B1+B2)/M2)*y+B3*w/M2;
eqn03 = diff(z) == w;
eqn04 = diff(w) == (B3/M1)*y - (K1/M1)*z -((B1+B3)/M1)*w +Fa/M1;
s = dsolve([eqn01 eqn02 eqn03 eqn04])
