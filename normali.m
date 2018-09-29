function [t,po]=normali(s)
v=mat2str(s);
k=strfind(v,'.');
w=strlength(v);
u=isempty(k);
d=k-1;   
x(1)='.';
if s<1 && u==false
    disp(v)
    fprintf('x10^0\n')
    fprintf('\n')
for l=1:w
    x(l)=v(l);
end    
po=0;
t=x;
elseif s>=1 && u==false
 for i=2:k
     x(1,i)=v(1,i-1);
 end
 for i=k+1:w
     x(1,i)=v(1,i);
 end
 disp(x)
  fprintf('x10^%d \n',k-1)
  fprintf('\n')
t=x;
po=k-1;
elseif u==true 
    for i=1:w
        x(1,i+1)=v(1,i);
    end
  
    disp(x)
    fprintf('x10^%d\n', w)
t=x;
po=w;
end
end