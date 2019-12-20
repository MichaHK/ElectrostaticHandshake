Persistence=1;
nN=1; 
tic
disp('starting homo-shakes')
MatParallelNFLp=ProduceParallelHandShake(nfl,nfl,Persistence,nN,1,1);
MatParallelNFL=ProduceParallelHandShake(nfl,nfl,Persistence,nN,0,0);

MatParallelNFMp=ProduceParallelHandShake(nfm,nfm,Persistence,nN,1,1);
MatParallelNFM=ProduceParallelHandShake(nfm,nfm,Persistence,nN,0,0);

MatParallelNFHp=ProduceParallelHandShake(nfh,nfh,Persistence,nN,1,1);
MatParallelNFH=ProduceParallelHandShake(nfh,nfh,Persistence,nN,0,0);

MatParallelAIntp=ProduceParallelHandShake(alpha,alpha,Persistence,nN,1,1);
MatParallelAInt=ProduceParallelHandShake(alpha,alpha,Persistence,nN,0,0);

MatParallelVimp=ProduceParallelHandShake(Vimentin,Vimentin,Persistence,nN,1,1);
MatParallelVim=ProduceParallelHandShake(Vimentin,Vimentin,Persistence,nN,0,0);
disp('homo-shakes done')

MatParallelNFLp_NFMp=ProduceParallelHandShake(nfl,nfm,Persistence,nN,1,1);
MatParallelNFL_NFM=ProduceParallelHandShake(nfl,nfm,Persistence,nN,0,0);
MatParallelNFLp_NFM=ProduceParallelHandShake(nfl,nfm,Persistence,nN,1,0);
MatParallelNFL_NFMp=ProduceParallelHandShake(nfl,nfm,Persistence,nN,0,1);
disp('NFLM-shakes done')

MatParallelNFLp_NFHp=ProduceParallelHandShake(nfl,nfh,Persistence,nN,1,1);
MatParallelNFL_NFH=ProduceParallelHandShake(nfl,nfh,Persistence,nN,0,0);
MatParallelNFLp_NFH=ProduceParallelHandShake(nfl,nfh,Persistence,nN,1,0);
MatParallelNFL_NFHp=ProduceParallelHandShake(nfl,nfh,Persistence,nN,0,1);
disp('NFLH-shakes done')

MatParallelAIntp_NFMp=ProduceParallelHandShake(alpha,nfm,Persistence,nN,1,1);
MatParallelAInt_NFM=ProduceParallelHandShake(alpha,nfm,Persistence,nN,0,0);
MatParallelAIntp_NFM=ProduceParallelHandShake(alpha,nfm,Persistence,nN,1,0);
MatParallelAInt_NFMp=ProduceParallelHandShake(alpha,nfm,Persistence,nN,0,1);
disp('AM-shakes done')

MatParallelAIntp_NFHp=ProduceParallelHandShake(alpha,nfh,Persistence,nN,1,1);
MatParallelAInt_NFH=ProduceParallelHandShake(alpha,nfh,Persistence,nN,0,0);
MatParallelAIntp_NFH=ProduceParallelHandShake(alpha,nfh,Persistence,nN,1,0);
MatParallelAInt_NFHp=ProduceParallelHandShake(alpha,nfh,Persistence,nN,0,1);
disp('AH-shakes done')


toc
save('AllParallelHandshakesOnePersis.mat')
% load('MichaHandTrial.mat')
% load('MichaHandTrial.mat')
% AveragedMat1=AveragedMat;


% set(gca,'YDir','normal')
% set(gca, 'XTick',1:Tick:length(proteinX.Tail))
% set(gca, 'XTickLabel',proteinX.TailStart:Tick:proteinX.TailEnd)
% set(gca, 'YTick',1:Tick:length(proteinY.Tail))
% set(gca, 'YTickLabel',proteinY.TailStart:Tick:proteinY.TailEnd)