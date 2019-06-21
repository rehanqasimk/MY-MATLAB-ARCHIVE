%{
 analytical solutions of differential equations

%}

% solving dy/dt = a*y 

syms a y(t)
eqn = diff(y,t) == a*y;
ySol0(t) = dsolve(eqn);


%{


Solve Higher-Order Differential Equation
Specify the second-order derivative of a function y by using diff(y,t,2) or diff(y,t,t). Similarly, specify the n-th order derivative by using diff(y,t,n).

Solve the equation 
d2ydt2=ay.
%}

syms y(t) a
eqn = diff(y,t,2) == a*y;
ySol1(t) = dsolve(eqn);
            
    