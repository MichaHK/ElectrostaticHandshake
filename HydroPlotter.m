tic
disp('starting homo-shakes')
HydroNFLp=ProduceHydroHandShake(nfl,nfl,5,5,1,1);
HydroNFL=ProduceHydroHandShake(nfl,nfl,5,5,0,0);

HydroNFMp=ProduceHydroHandShake(nfm,nfm,5,5,1,1);
HydroNFM=ProduceHydroHandShake(nfm,nfm,5,5,0,0);

HydroNFHp=ProduceHydroHandShake(nfh,nfh,5,5,1,1);
HydroNFH=ProduceHydroHandShake(nfh,nfh,5,5,0,0);

HydroAIntp=ProduceHydroHandShake(alpha,alpha,5,5,1,1);
HydroAInt=ProduceHydroHandShake(alpha,alpha,5,5,0,0);

HydroVimp=ProduceHydroHandShake(Vimentin,Vimentin,5,5,1,1);
HydroVim=ProduceHydroHandShake(Vimentin,Vimentin,5,5,0,0);
disp('homo-shakes done')

HydroNFLp_NFMp=ProduceHydroHandShake(nfl,nfm,5,5,1,1);
HydroNFL_NFM=ProduceHydroHandShake(nfl,nfm,5,5,0,0);
HydroNFLp_NFM=ProduceHydroHandShake(nfl,nfm,5,5,1,0);
HydroNFL_NFMp=ProduceHydroHandShake(nfl,nfm,5,5,0,1);
disp('NFLM-shakes done')

HydroNFLp_NFHp=ProduceHydroHandShake(nfl,nfh,5,5,1,1);
HydroNFL_NFH=ProduceHydroHandShake(nfl,nfh,5,5,0,0);
HydroNFLp_NFH=ProduceHydroHandShake(nfl,nfh,5,5,1,0);
HydroNFL_NFHp=ProduceHydroHandShake(nfl,nfh,5,5,0,1);
disp('NFLH-shakes done')

HydroAIntp_NFMp=ProduceHydroHandShake(alpha,nfm,5,5,1,1);
HydroAInt_NFM=ProduceHydroHandShake(alpha,nfm,5,5,0,0);
HydroAIntp_NFM=ProduceHydroHandShake(alpha,nfm,5,5,1,0);
HydroAInt_NFMp=ProduceHydroHandShake(alpha,nfm,5,5,0,1);
disp('AM-shakes done')

HydroAIntp_NFHp=ProduceHydroHandShake(alpha,nfh,5,5,1,1);
HydroAInt_NFH=ProduceHydroHandShake(alpha,nfh,5,5,0,0);
HydroAIntp_NFH=ProduceHydroHandShake(alpha,nfh,5,5,1,0);
HydroAInt_NFHp=ProduceHydroHandShake(alpha,nfh,5,5,0,1);
disp('AH-shakes done')


toc
save('AllHydroHandshakes.mat')
% load('MichaHandTrial.mat')
% load('MichaHandTrial.mat')
% AveragedMat1=AveragedMat;


% set(gca,'YDir','normal')
% set(gca, 'XTick',1:Tick:length(proteinX.Tail))
% set(gca, 'XTickLabel',proteinX.TailStart:Tick:proteinX.TailEnd)
% set(gca, 'YTick',1:Tick:length(proteinY.Tail))
% set(gca, 'YTickLabel',proteinY.TailStart:Tick:proteinY.TailEnd)