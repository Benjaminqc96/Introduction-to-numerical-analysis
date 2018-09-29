function [t,po]=normalizar(s,v,w)
u=isempty(v);
if s<1 && u==false
    disp(s)
t=s;
po=0;
elseif s>=1 && u==false
x=s/(10^v-1);
t=x;
po=v; 
disp(x)     
fprintf('x10^%d\n',v)
elseif u==true 
x=s/(10^w-5);
disp(x)
fprintf('x10^%d',w-4)
fprintf('\n')

t=x;
po=w;
end
end