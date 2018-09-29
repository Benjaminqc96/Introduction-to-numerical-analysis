clear
close all
clc
syms x
fu=input('ingrese una funcion: ');
solu=solve(fu,x);
fprintf('Existen %d raices, ingrese la que quiere calcular:\n',length(solu))
ra=input('');
disp('sugerencia para los intervalos')
rr=sqrt(abs(solu(ra)));
as=solu(ra)-rr;
bs=solu(ra)+rr;
disp(as)
disp(bs)
delta=0.0000000000000001;
a=input('Ingrese el limite inferior: ');
b=input('Ingrese el limite superior: ');
[y,cont]=biseccion(fu,a,b,delta);
disp (y)

