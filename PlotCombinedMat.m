function [FigNum]=PlotCombinedMat (ChargeMat,HydroMat,SmoothWindow,FigNum,Protein1Name,Protein2Name,subplot1,subplot2)
% [FigNum]=PlotCombinedMat (ChargeMat,HydroMat,SmoothWindow,FigNum,Protein1Name,Protein2Name,subplot1,subplot2)
% Smoothing is not needed. Leave as remark only. 
% FigNum is increased by one. 
% Called by CombinedPlotter
% ChargeMat=(ChargeMat<0).*ChargeMat; %%%%%%%%%%%%5
load colormapHandshakeWithPlus.mat;
% c=colormap(jet(128));
colormap(c)
% ca=[-4 4]; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ca=[-15 15];

numOfAve=SmoothWindow;

subplot(subplot1,subplot2,FigNum)  
protein1=ChargeMat.protein1;
protein2=ChargeMat.protein2;
Offset1=ChargeMat.protein1.TailStart-1;
Offset2=ChargeMat.protein2.TailStart-1;
Protein1Name=ChargeMat.protein1.ShortName;
Protein2Name=ChargeMat.protein2.ShortName;

tmp(:,:)=ChargeMat.mat(:,:);
% tmp=smooth2a(tmp,numOfAve,numOfAve);%%%%%%%%%%% Not Needed- to not use. 
imagesc (ChargeMat.protein1.TailStart-1 + [1:size(tmp, 1)], ChargeMat.protein2.TailStart-1 + [1:size(tmp, 2)], tmp');
clear tmp
title ([Protein1Name,':',Protein2Name],'fontsize',12,'fontname','arial','fontweight','bold');
xlabel ([Protein1Name,' residue #'],'fontsize',12,'fontname','arial','fontweight','bold')
ylabel ([Protein2Name,' residue #'],'fontsize',12,'fontname','arial','fontweight','bold')
if ~isempty(HydroMat)
    tmp=HydroMat;
    % tmp=smooth2a(HydroMat,numOfAve,numOfAve); Not Needed- to not use. 
%     addHydro (FigNum,tmp,subplot1,subplot2);
end
clear tmp;
axis xy
axis equal
axis tight
set (gca,'fontweight','bold','fontsize',12,'fontname','arial');
% colorbar ('fontsize',16,'fontname','arial','fontweight','bold');
caxis (ca);
colormap(c)
FigNum=FigNum+1;

% PlotCombinedMat (MatNFLp,[],1,1,Protein1Name,Protein2Name,subplot1,subplot2)
