function [y,ww]=biseccion(fu,a,b,delta)
format long
i=1;
e=subs(fu,a);
f=subs(fu,b);
if sign(f)==sign(e)
    disp('No se puede calcular la raiz')
    return
    
end
while((b-a)/2>delta)
    i=i+1;
cont=i;
    c=(a+b)/2;
    g=subs(fu,c);
    if sign(e)==sign(g)
        a=c;
        e=g;
    else
        b=c;
        f=g;
     
    end
    w(i)=double(c);
    ww=w;
end

 y=c;


end
