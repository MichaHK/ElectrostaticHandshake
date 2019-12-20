function addHydro (fid,hydromat,subplot1,subplot2)
if (nargin>2)
    subplot(subplot1,subplot2,fid)
else
    figure (fid);
end
hold on
[x,y]=find(hydromat>0);
plot (y,x,'xk');
