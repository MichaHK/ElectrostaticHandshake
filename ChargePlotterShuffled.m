tic
disp('starting homo-shakes')
MatNFLSH=ProduceHandShake(nflSH,nflSH,5,5,0,0);
MatNFLSHp=ProduceHandShake(nflSH,nflSH,5,5,1,1);

MatNFMSH=ProduceHandShake(nfmSH,nfmSH,5,5,0,0);
MatNFMSHp=ProduceHandShake(nfmSH,nfmSH,5,5,1,1);

MatNFHSH=ProduceHandShake(nfhSH,nfhSH,5,5,0,0);
MatNFHSHp=ProduceHandShake(nfhSH,nfhSH,5,5,1,1);

MatAIntSH=ProduceHandShake(alphaSH,alphaSH,5,5,0,0);

disp('homo-shakes done')

MatNFLSH_NFMp=ProduceHandShake(nflSH,nfm,5,5,0,1);
MatNFLSH_NFM=ProduceHandShake(nflSH,nfm,5,5,0,0);

MatNFLSH_NFMSH=ProduceHandShake(nflSH,nfmSH,5,5,0,0);
MatNFLSHp_NFMSHp=ProduceHandShake(nflSH,nfmSH,5,5,1,1);

MatNFLp_NFMSH=ProduceHandShake(nfl,nfmSH,5,5,1,0);
MatNFL_NFMSHp=ProduceHandShake(nfl,nfmSH,5,5,0,1);
disp('NFLM-shakes done')

MatNFLp_NFHSHp=ProduceHandShake(nfl,nfhSH,5,5,1,1);
MatNFL_NFHSH=ProduceHandShake(nfl,nfhSH,5,5,0,0);
MatNFLSH_NFH=ProduceHandShake(nflSH,nfh,5,5,0,0);
MatNFLSHp_NFHp=ProduceHandShake(nflSH,nfh,5,5,1,1);
MatNFLSH_NFHSH=ProduceHandShake(nflSH,nfhSH,5,5,0,0);
MatNFLSHp_NFHSHp=ProduceHandShake(nflSH,nfhSH,5,5,1,1);

disp('NFLH-shakes done')

MatAIntSH_NFMp=ProduceHandShake(alphaSH,nfm,5,5,0,1);
MatAIntSH_NFM=ProduceHandShake(alphaSH,nfm,5,5,0,1);

MatAInt_NFMSHp=ProduceHandShake(alpha,nfmSH,5,5,0,1);
MatAInt_NFMSH=ProduceHandShake(alpha,nfmSH,5,5,0,0);

MatAIntSH_NFMSH=ProduceHandShake(alphaSH,nfmSH,5,5,0,0);
MatAIntSH_NFMSHp=ProduceHandShake(alphaSH,nfmSH,5,5,0,1);
disp('AM-shakes done')

MatAIntSH_NFHp=ProduceHandShake(alphaSH,nfh,5,5,0,1);
MatAIntSH_NFH=ProduceHandShake(alphaSH,nfh,5,5,0,1);

MatAInt_NFHSHp=ProduceHandShake(alpha,nfhSH,5,5,0,1);
MatAInt_NFHSH=ProduceHandShake(alpha,nfhSH,5,5,0,0);

MatAIntSH_NFHSH=ProduceHandShake(alphaSH,nfhSH,5,5,0,0);
MatAIntSH_NFHSHp=ProduceHandShake(alphaSH,nfhSH,5,5,0,1);
disp('AH-shakes done')


toc
save('ShuffledHandshakes.mat')
% load('MichaHandTrial.mat')
% load('MichaHandTrial.mat')
% AveragedMat1=AveragedMat;


% set(gca,'YDir','normal')
% set(gca, 'XTick',1:Tick:length(proteinX.Tail))
% set(gca, 'XTickLabel',proteinX.TailStart:Tick:proteinX.TailEnd)
% set(gca, 'YTick',1:Tick:length(proteinY.Tail))
% set(gca, 'YTickLabel',proteinY.TailStart:Tick:proteinY.TailEnd)