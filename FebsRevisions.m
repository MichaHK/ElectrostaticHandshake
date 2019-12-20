figure(3)

protein1=nfm;
protein2=nfm;
pH=6.8;

IncludePhos1=1;
IncludePhos2=1;

Persistence=5;
nN=5;

NFM_HS_TwoTwo=ProduceHandShake(protein1,protein2,Persistence,nN,IncludePhos1, IncludePhos2);
NFM_ParaHS_TwoTwo=ProduceParallelHandShake(protein1,protein2,Persistence,nN,IncludePhos1, IncludePhos2);


SmoothWindow=1;
subplot1=2;
subplot2=1;

FigNum=1;

FigNum=PlotCombinedMat (NFM_HS_TwoTwo,[],SmoothWindow,FigNum,protein1.Name,protein2.Name,subplot1,subplot2);
title(['Persistence:' num2str(Persistence) '. ' 'nN: ' num2str(nN)])
FigNum=PlotCombinedMat (NFM_ParaHS_TwoTwo,[],SmoothWindow,FigNum,protein1.Name,protein2.Name,subplot1,subplot2);
title(['Persistence:' num2str(Persistence) '. ' 'nN: ' num2str(nN)])


% load colormapHandshakeWithPlus.mat;
% % c=colormap(jet(128));
% colormap(c)
% ca=[-25 25];
% 
% imagesc(matout)
% 
% 
% axis xy
% set (gca,'fontweight','bold','fontsize',12,'fontname','arial');
% % colorbar ('fontsize',16,'fontname','arial','fontweight','bold');
% caxis (ca);
% colormap(c)
% 
% 
% 
% 
