function PlotCombinedMat (ChargeMat,HydroMat
c=colormap(jet(128))
ca=[-20 20];


load MichaOnlyHandShakeMats.mat;
load AllHydroHandshakes.mat;
epsilon=80;
numOfAve=1;

figure (1)
clf;  

%subplot (3,3,1)
tmp(:,:)=MatNFLp/epsilon(:,:);
tmp=smooth2a(tmp,numOfAve,numOfAve);
imagesc (tmp);
clear tmp
%title (['NF-L : NF-L (sum over ' num2str(numOfAve) 'AA)'],'fontsize',16,'fontname','arial');
title ('NF-L : NF-L','fontsize',16,'fontname','arial','fontweight','bold');
xlabel ('NF-L residue #','fontsize',16,'fontname','arial','fontweight','bold')
ylabel ('NF-L residue #','fontsize',16,'fontname','arial','fontweight','bold')
colormap(jet(128))
tmp=smooth2a(HydroNFLp,numOfAve,numOfAve);
addHydro (1,tmp);
clear tmp;
axis xy
set (gca,'fontweight','bold','fontsize',16,'fontname','arial');
colorbar ('fontsize',16,'fontname','arial','fontweight','bold');
caxis (ca);


%%

figure (2)
clf;  

%subplot (3,3,1)
tmp(:,:)=MatNFMp/epsilon(:,:);
tmp=smooth2a(tmp,numOfAve,numOfAve);
imagesc (tmp);
clear tmp
title ('NF-M : NF-M','fontsize',16,'fontname','arial','fontweight','bold');
xlabel ('NF-M residue #','fontsize',16,'fontname','arial','fontweight','bold')
ylabel ('NF-M residue #','fontsize',16,'fontname','arial','fontweight','bold')
addHydro (2,HydroZiplockLowPHigP);
axis xy
a=axis;
a(3)=398;
%a(4)=555;
a(1)=412;
axis (a);
set (gca,'fontweight','bold','fontsize',16,'fontname','arial');
colormap (c)

colorbar ('fontsize',16,'fontname','arial','fontweight','bold');
caxis (ca);

figure (3)
clf;  

%subplot (3,3,1)
tmp(:,:)=MatMPHP(1,:,:);
imagesc (tmp);
clear tmp
%title (['NF-L : NF-L (sum over ' num2str(numOfAve) 'AA)'],'fontsize',16,'fontname','arial');
title ('NF-M : NF-H','fontsize',16,'fontname','arial','fontweight','bold');
xlabel ('NF-H residue #','fontsize',16,'fontname','arial','fontweight','bold')
ylabel ('NF-M residue #','fontsize',16,'fontname','arial','fontweight','bold')
addHydro (3,HydroZiplockMidPHigP);
axis xy
a=axis;
a(3)=413;
%a(4)=555;
a(1)=412;
axis (a);
set (gca,'fontweight','bold','fontsize',16,'fontname','arial');
colormap (c)

colorbar ('fontsize',16,'fontname','arial','fontweight','bold');
caxis (ca);



