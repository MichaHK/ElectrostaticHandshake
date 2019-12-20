tic
disp('starting homo-shakes')
MatParallelNFLSH=ProduceParallelHandShake(nflSH,nflSH,5,5,0,0);
MatParallelNFLSHp=ProduceParallelHandShake(nflSH,nflSH,5,5,1,1);

MatParallelNFMSH=ProduceParallelHandShake(nfmSH,nfmSH,5,5,0,0);
MatParallelNFMSHp=ProduceParallelHandShake(nfmSH,nfmSH,5,5,1,1);

MatParallelNFHSH=ProduceParallelHandShake(nfhSH,nfhSH,5,5,0,0);
MatParallelNFHSHp=ProduceParallelHandShake(nfhSH,nfhSH,5,5,1,1);

MatParallelAIntSH=ProduceParallelHandShake(alphaSH,alphaSH,5,5,0,0);

disp('homo-shakes done')

MatParallelNFLSH_NFMp=ProduceParallelHandShake(nflSH,nfm,5,5,0,1);
MatParallelNFLSH_NFM=ProduceParallelHandShake(nflSH,nfm,5,5,0,0);

MatParallelNFLSH_NFMSH=ProduceParallelHandShake(nflSH,nfmSH,5,5,0,0);
MatParallelNFLSHp_NFMSHp=ProduceParallelHandShake(nflSH,nfmSH,5,5,1,1);

MatParallelNFLp_NFMSH=ProduceParallelHandShake(nfl,nfmSH,5,5,1,0);
MatParallelNFL_NFMSHp=ProduceParallelHandShake(nfl,nfmSH,5,5,0,1);
disp('NFLM-shakes done')

MatParallelNFLp_NFHSHp=ProduceParallelHandShake(nfl,nfhSH,5,5,1,1);
MatParallelNFL_NFHSH=ProduceParallelHandShake(nfl,nfhSH,5,5,0,0);
MatParallelNFLSH_NFH=ProduceParallelHandShake(nflSH,nfh,5,5,0,0);
MatParallelNFLSHp_NFHp=ProduceParallelHandShake(nflSH,nfh,5,5,1,1);
MatParallelNFLSH_NFHSH=ProduceParallelHandShake(nflSH,nfhSH,5,5,0,0);
MatParallelNFLSHp_NFHSHp=ProduceParallelHandShake(nflSH,nfhSH,5,5,1,1);

disp('NFLH-shakes done')

MatParallelAIntSH_NFMp=ProduceParallelHandShake(alphaSH,nfm,5,5,0,1);
MatParallelAIntSH_NFM=ProduceParallelHandShake(alphaSH,nfm,5,5,0,1);

MatParallelAInt_NFMSHp=ProduceParallelHandShake(alpha,nfmSH,5,5,0,1);
MatParallelAInt_NFMSH=ProduceParallelHandShake(alpha,nfmSH,5,5,0,0);

MatParallelAIntSH_NFMSH=ProduceParallelHandShake(alphaSH,nfmSH,5,5,0,0);
MatParallelAIntSH_NFMSHp=ProduceParallelHandShake(alphaSH,nfmSH,5,5,0,1);
disp('AM-shakes done')

MatParallelAIntSH_NFHp=ProduceParallelHandShake(alphaSH,nfh,5,5,0,1);
MatParallelAIntSH_NFH=ProduceParallelHandShake(alphaSH,nfh,5,5,0,1);

MatParallelAInt_NFHSHp=ProduceParallelHandShake(alpha,nfhSH,5,5,0,1);
MatParallelAInt_NFHSH=ProduceParallelHandShake(alpha,nfhSH,5,5,0,0);

MatParallelAIntSH_NFHSH=ProduceParallelHandShake(alphaSH,nfhSH,5,5,0,0);
MatParallelAIntSH_NFHSHp=ProduceParallelHandShake(alphaSH,nfhSH,5,5,0,1);
disp('AH-shakes done')


toc
save('ShuffledParallelHandshakes.mat')
% load('MichaHandTrial.MatParallel')
% load('MichaHandTrial.MatParallel')
% AveragedMatParallel1=AveragedMatParallel;


% set(gca,'YDir','normal')
% set(gca, 'XTick',1:Tick:length(proteinX.Tail))
% set(gca, 'XTickLabel',proteinX.TailStart:Tick:proteinX.TailEnd)
% set(gca, 'YTick',1:Tick:length(proteinY.Tail))
% set(gca, 'YTickLabel',proteinY.TailStart:Tick:proteinY.TailEnd)