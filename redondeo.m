clear 
close all 
clc
q=input('Ingresa el primer numero');
s=input('ingresa el segundo numero');
fprintf('que accion desea realizar?\n1.truncar\n2.redondear\n3.sumar\n4.restar\n5.multiplicar\n6.dividir')
control=input('');
 [y,p1]=normali(q);
 [x,p2]=normali(s);
 switch control
     case 1
          cont1=input('A cuantas cifras deseas cortar el primer numero?');
        for i=1:cont1
           cort1(i)=x(i);
        end
        disp(cort1)
         cont2=input('A cuantas cifras deseas cortar el segundo numero?');
                 for i=1:cont2
            cort2(i)=x(i);
                 end
        disp(cort2)
     case 2
         cont1=input('A cuantas cifras deseas redondear el primer numero?');
         cont2=input('A cuantas cifras deseas redondear el segundo numero?');
         for i=1:strlength(y)
             cort1(1,i)=y(1,i);
         end
         for j=1:strlength(x)
             cort2(1,j)=x(1,j);
         end
         g=str2num(y(1,cont1+2));
 
   if g>=5 && g<=9
        d=str2num(y(1,cont1+1));
        h=d+1;
       for i=1:cont1
           re1(i)=cort1(i);
       end
       re1(1,cont1+1)=num2str(h);
       disp(re1)
            
    end
         k=str2num(x(cont2+2));
    if k>=5 && k<=9
        q=str2num(x(cont2+1));
        hzs=q+1;
       for i=1:cont2
           re2(i)=cort2(i);
       end
       re2(1,(cont2+1))=num2str(hzs);
      disp(re2)
    else
        for i=1:cont1+1
           re1(i)=cort1(i);
       end
       disp(re1)
         for i=1:cont2+1
           re2(i)=cort2(i);
         end
       disp(re2)
    end
     case 3
         a1=str2num(y);
         a2=str2num(x);
         b1=a1*(10^p1);
         b2=a2*(10^p2);
         c1=b1+b2;
         [fe,fr]=normali(c1);
     case 4
         a1=str2num(y);
         a2=str2num(x);
         b1=a1*(10^p1);
         b2=a2*(10^p2);
         c1=b1-b2;
         [fe,fr]=normali(c1);
     case 5
        a1=str2num(y);
         a2=str2num(x);
         b1=a1*(10^p1);
         b2=a2*(10^p2);
         c1=b1*b2;
         [fe,fr]=normali(c1);
    case 6
         a1=str2num(y);
         a2=str2num(x);
         b1=a1*(10^p1);
         b2=a2*(10^p2);
         c1=b1/b2;
         [fe,fr]=normali(c1);
     otherwise      
 end