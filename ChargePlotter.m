tic
% disp('starting 2AA persistence')
Persistence=4;
nN=5;
disp('starting homo-shakes')
MatNFLp=ProduceHandShake(nfl,nfl,Persistence,nN,1,1);
MatNFL=ProduceHandShake(nfl,nfl,Persistence,nN,0,0);

MatNFMp=ProduceHandShake(nfm,nfm,Persistence,nN,1,1);
MatNFM=ProduceHandShake(nfm,nfm,Persistence,nN,0,0);

MatNFHp=ProduceHandShake(nfh,nfh,Persistence,nN,1,1);
MatNFH=ProduceHandShake(nfh,nfh,Persistence,nN,0,0);

% MatAIntp=ProduceHandShake(alpha,alpha,1,1,1,1);
% MatAInt=ProduceHandShake(alpha,alpha,1,1,0,0);
% 
% MatVimp=ProduceHandShake(Vimentin,Vimentin,1,1,1,1);
% MatVim=ProduceHandShake(Vimentin,Vimentin,1,1,0,0);
disp('homo-shakes done')

MatNFLp_NFMp=ProduceHandShake(nfm,nfl,Persistence,nN,1,1);
MatNFL_NFM=ProduceHandShake(nfm,nfl,Persistence,nN,0,0);
% MatNFLp_NFM=ProduceHandShake(nfl,nfm,Persistence,nN,1,0);
% MatNFL_NFMp=ProduceHandShake(nfl,nfm,Persistence,nN,0,1);
disp('NFLM-shakes done')

MatNFLp_NFHp=ProduceHandShake(nfh,nfl,Persistence,nN,1,1);
MatNFL_NFH=ProduceHandShake(nfh,nfl,Persistence,nN,0,0);
% MatNFLp_NFH=ProduceHandShake(nfl,nfh,Persistence,nN,1,0);
% MatNFL_NFHp=ProduceHandShake(nfl,nfh,Persistence,nN,0,1);
disp('NFLH-shakes done')

% MatAIntp_NFMp=ProduceHandShake(alpha,nfm,1,1,1,1);
% MatAInt_NFM=ProduceHandShake(alpha,nfm,1,1,0,0);
% MatAIntp_NFM=ProduceHandShake(alpha,nfm,1,1,1,0);
% MatAInt_NFMp=ProduceHandShake(alpha,nfm,1,1,0,1);
% disp('AM-shakes done')

% MatAIntp_NFHp=ProduceHandShake(alpha,nfh,1,1,1,1);
% MatAInt_NFH=ProduceHandShake(alpha,nfh,1,1,0,0);
% MatAIntp_NFH=ProduceHandShake(alpha,nfh,1,1,1,0);
% MatAInt_NFHp=ProduceHandShake(alpha,nfh,1,1,0,1);
% disp('AH-shakes done')


toc
save('AllHandshakesValidatedPhosphosites_nN5.mat')

%% Truncations
% load('C:\Users\user\Dropbox\My Matlab Code\Protein library\proteins.mat'); % You also need to include the library for it to work
% MatNFL_Eleven=ProduceHandShake(nfl_Eleven,nfl_Eleven,1,1,0,0);
% MatNFL_Five=ProduceHandShake(nfl_Five,nfl_Five,1,1,0,0);
% MatNFL_Five_NFMp=ProduceHandShake(nfl_Five,nfm,1,1,0,1);
% MatNFL_Eleven_NFMp=ProduceHandShake(nfl_Eleven,nfm,1,1,0,1);
% save('TruncationHandshakes.mat')

%% Tau Shakes 
% load('C:\Users\user\Dropbox\My Matlab Code\Protein library\proteins.mat'); % You also need to include the library for it to work
MatNFL_TAU=ProduceHandShake(tauH,nflH,1,1,0,0);
MatAInt_TAU=ProduceHandShake(tauH,alphaH,1,1,0,0);
MatNFLp_TAUp=ProduceHandShake(tauH,nflH,1,1,1,1);
MatAIntp_TAUp=ProduceHandShake(tauH,alphaH,1,1,1,1);
save('TauHandshakes.mat')

%% oldies
% load('MichaHandTrial.mat')
% load('MichaHandTrial.mat')
% AveragedMat1=AveragedMat;


% set(gca,'YDir','normal')
% set(gca, 'XTick',1:Tick:length(proteinX.Tail))
% set(gca, 'XTickLabel',proteinX.TailStart:Tick:proteinX.TailEnd)
% set(gca, 'YTick',1:Tick:length(proteinY.Tail))
% set(gca, 'YTickLabel',proteinY.TailStart:Tick:proteinY.TailEnd)