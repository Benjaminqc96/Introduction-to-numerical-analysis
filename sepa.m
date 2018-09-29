function [j,k]=sepa(d)
v=strfind(mat2str(d),'.');
w=strlength(mat2str(d));
if isempty(v)
    v=0;
    j=v;
end
k=w;
end




