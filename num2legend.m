function num2legend(numVec)
len=length(numVec);
s=[];
for i=1:len
    st=num2str(numVec(i));
    s{i}=char(st);
end
legend (char(s));