function [t,cont]=relle()
cont=input('cuantos numeros deseas operar?');
for i=1:cont
    fprintf('ingresa el numero %d',i)
    f(i)=input('');
end
for j=1:cont
    if f(j)<1
        disp(f(j))
    end
end
t=f;
end