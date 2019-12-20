figure
SmoothWindow=1; % not in use anymore
subplot1=4;
subplot2=1;

FigNum=1;

%% Plot for Phos paper
% FigNum=PlotCombinedMat (MatNFL,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFM,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFH,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFLp,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFMp,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFHp,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);

%% Phos paper hetero
% FigNum=PlotCombinedMat (MatNFL_NFM,[],SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL_NFH,[],SmoothWindow,FigNum,'NFL Phos','NFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_NFMp,[],SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_NFHp,[],SmoothWindow,FigNum,'NFL Phos','NFH Phos',subplot1,subplot2);

%% Plot Tau
% load('C:\Users\user\Dropbox\My Matlab Code\HandShake - Micha\TauHandshakes.mat')
% FigNum=PlotCombinedMat (MatAInt_TAU,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatAIntp_TAUp,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFL_TAU,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_TAUp,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);


%% Plot for Bovine NFH
% 
% FigNum=PlotCombinedMat (MatNFH,[],SmoothWindow,FigNum,'MatNFH','MatNFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFHp,[],SmoothWindow,FigNum,'MatNFHp','MatNFHp',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFHBovine5T10,[],SmoothWindow,FigNum,'MatNFH_B','MatNFH_B',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFHpBovine5T10,[],SmoothWindow,FigNum,'MatNFHp_B','MatNFHp_B',subplot1,subplot2);
% 
% FigNum=1;
%% Plot truncations
% FigNum=PlotCombinedMat (MatNFL,[],SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL_Five,[],SmoothWindow,FigNum,'NFL \Delta5','NFL \Delta5',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL_Eleven,[],SmoothWindow,FigNum,'NFL \Delta11','NFL \Delta11',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFL_NFMp,[],SmoothWindow,FigNum,'NFM','NFL',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL_Five_NFMp,[],SmoothWindow,FigNum,'NFM','NFL \Delta5',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL_Eleven_NFMp,[],SmoothWindow,FigNum,'NFM','NFL \Delta11',subplot1,subplot2);
% 
% 
% 
% %% Plot parallel
% FigNum=PlotCombinedMat (MatParallelNFMp,[],SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFM,[],SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelNFHp,[],SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFH,[],SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);
% 

%%
% FigNum=PlotCombinedMat (MatVimp,HydroVimp,SmoothWindow,FigNum,'Vim Phos','Vim Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatVim,HydroVim,SmoothWindow,FigNum,'Vim','Vim',subplot1,subplot2);

% FigNum=PlotCombinedMat (MatNFLp,HydroNFLp,SmoothWindow,FigNum,'NFL Phos','NFL Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL,HydroNFL,SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatAIntp,HydroAIntp,SmoothWindow,FigNum,'AInt Phos','AInt Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatAInt,HydroAInt,SmoothWindow,FigNum,'AInt','AInt',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFMp,HydroNFMp,SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFM,HydroNFM,SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFHp,HydroNFHp,SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFH,HydroNFH,SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatNFLp_NFHp,HydroNFLp_NFHp,SmoothWindow,FigNum,'NFL Phos','NFH Phos',subplot1,subplot2);
% % % FigNum=PlotCombinedMat (MatNFL_NFHp,HydroNFL_NFHp,SmoothWindow,FigNum,'NFL','NFH Phos');
% FigNum=PlotCombinedMat (MatNFLp_NFH,HydroNFLp_NFH,SmoothWindow,FigNum,'NFL Phos','NFH',subplot1,subplot2);
% % % FigNum=PlotCombinedMat (MatNFL_NFH,HydroNFL_NFH,SmoothWindow,FigNum,'NFL','NFH');
% % 
% FigNum=PlotCombinedMat (MatNFLp_NFMp,HydroNFLp_NFMp,SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatNFL_NFMp,HydroNFL_NFMp,SmoothWindow,FigNum,'NFL','NFM Phos');
% FigNum=PlotCombinedMat (MatNFLp_NFM,HydroNFLp_NFM,SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatNFL_NFM,HydroNFL_NFM,SmoothWindow,FigNum,'NFL','NFM');
% % 
% % FigNum=PlotCombinedMat (MatAIntp_NFHp,HydroAIntp_NFHp,SmoothWindow,FigNum,'AInt Phos','NFH Phos');
% FigNum=PlotCombinedMat (MatAInt_NFHp,HydroAInt_NFHp,SmoothWindow,FigNum,'AInt','NFH Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatAIntp_NFH,HydroAIntp_NFH,SmoothWindow,FigNum,'AInt Phos','NFH');
% FigNum=PlotCombinedMat (MatAInt_NFH,HydroAInt_NFH,SmoothWindow,FigNum,'AInt','NFH',subplot1,subplot2);
% 
% % FigNum=PlotCombinedMat (MatAIntp_NFMp,HydroAIntp_NFMp,SmoothWindow,FigNum,'AInt Phos','NFM Phos');
% FigNum=PlotCombinedMat (MatAInt_NFMp,HydroAInt_NFMp,SmoothWindow,FigNum,'AInt','NFM Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatAIntp_NFM,HydroAIntp_NFM,SmoothWindow,FigNum,'AInt Phos','NFM');
% FigNum=PlotCombinedMat (MatAInt_NFM,HydroAInt_NFM,SmoothWindow,FigNum,'AInt','NFM',subplot1,subplot2);

%% Plot for poster IBPS
% % 
% FigNum=PlotCombinedMat (MatAInt,[],SmoothWindow,FigNum,'AInt','AInt',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFL,[],SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFMp,[],SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFM,[],SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFHp,[],SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFH,[],SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_NFMp,[],SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_NFM,[],SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);


%% Plot attractive only
% 
% FigNum=PlotCombinedMat (Att(MatAInt),[],SmoothWindow,FigNum,'AInt','AInt',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFL),[],SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFMp),[],SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFM),[],SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFHp),[],SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFH),[],SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFHp)-Att(MatNFH),[],SmoothWindow,FigNum,'NFH Phos-','NFH',subplot1,subplot2);
% FigNum=PlotCombinedMat (Att(MatNFMp)-Att(MatNFM),[],SmoothWindow,FigNum,'NFM Phos-','NFM',subplot1,subplot2);


% FigNum=PlotCombinedMat (MatNFLp_NFMp,[],SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatNFLp_NFM,[],SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);
