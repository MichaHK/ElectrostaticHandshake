figure
SmoothWindow=1;
subplot1=2;
subplot2=4;


FigNum=1;

%% Plot for poster IBPS
% 
FigNum=PlotCombinedMat (MatParallelAInt,[],SmoothWindow,FigNum,'AInt','AInt',subplot1,subplot2);
FigNum=PlotCombinedMat (MatParallelNFL,[],SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
FigNum=PlotCombinedMat (MatParallelNFMp,[],SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
FigNum=PlotCombinedMat (MatParallelNFM,[],SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
FigNum=PlotCombinedMat (MatParallelNFHp,[],SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
FigNum=PlotCombinedMat (MatParallelNFH,[],SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);
FigNum=PlotCombinedMat (Att(MatNFHp)-Att(MatNFH),[],SmoothWindow,FigNum,'NFH Phos-','NFH',subplot1,subplot2);
FigNum=PlotCombinedMat (Att(MatNFMp)-Att(MatNFM),[],SmoothWindow,FigNum,'NFM Phos-','NFM',subplot1,subplot2);


% FigNum=PlotCombinedMat (MatParallelNFLp_NFMp,[],SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFLp_NFM,[],SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);



% %% Plots for alpha Paper
% FigNum=PlotCombinedMat (MatParallelAInt,[],SmoothWindow,FigNum,'\alpha-Inx','\alpha-Inx',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFLp,[],SmoothWindow,FigNum,'NF-L Phos','NF-L Phos',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelAInt_NFMp,[],SmoothWindow,FigNum,'\alpha-Inx','NF-M Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFLp_NFMp,[],SmoothWindow,FigNum,'NF-L Phos','NF-M Phos',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelAInt_NFHp,[],SmoothWindow,FigNum,'\alpha-Inx','NF-H Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFLp_NFHp,[],SmoothWindow,FigNum,'NF-L Phos','NF-H Phos',subplot1,subplot2);

%%
% FigNum=PlotCombinedMat (MatParallelNFLp,HydroNFLp,SmoothWindow,FigNum,'NFL Phos','NFL Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFL,HydroNFL,SmoothWindow,FigNum,'NFL','NFL',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelAIntp,HydroAIntp,SmoothWindow,FigNum,'AInt Phos','AInt Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelAInt,HydroAInt,SmoothWindow,FigNum,'AInt','AInt',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelNFMp,HydroNFMp,SmoothWindow,FigNum,'NFM Phos','NFM Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFM,HydroNFM,SmoothWindow,FigNum,'NFM','NFM',subplot1,subplot2);
% 
% FigNum=PlotCombinedMat (MatParallelNFHp,HydroNFHp,SmoothWindow,FigNum,'NFH Phos','NFH Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelNFH,HydroNFH,SmoothWindow,FigNum,'NFH','NFH',subplot1,subplot2);

%%

% FigNum=PlotCombinedMat (MatParallelNFLp_NFHp,HydroNFLp_NFHp,SmoothWindow,FigNum,'NFL Phos','NFH Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelNFL_NFHp,HydroNFL_NFHp,SmoothWindow,FigNum,'NFL','NFH Phos');
% FigNum=PlotCombinedMat (MatParallelNFLp_NFH,HydroNFLp_NFH,SmoothWindow,FigNum,'NFL Phos','NFH',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelNFL_NFH,HydroNFL_NFH,SmoothWindow,FigNum,'NFL','NFH');
% 
% FigNum=PlotCombinedMat (MatParallelNFLp_NFMp,HydroNFLp_NFMp,SmoothWindow,FigNum,'NFL Phos','NFM Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelNFL_NFMp,HydroNFL_NFMp,SmoothWindow,FigNum,'NFL','NFM Phos');
% FigNum=PlotCombinedMat (MatParallelNFLp_NFM,HydroNFLp_NFM,SmoothWindow,FigNum,'NFL Phos','NFM',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelNFL_NFM,HydroNFL_NFM,SmoothWindow,FigNum,'NFL','NFM');
% 
% % FigNum=PlotCombinedMat (MatParallelAIntp_NFHp,HydroAIntp_NFHp,SmoothWindow,FigNum,'AInt Phos','NFH Phos');
% FigNum=PlotCombinedMat (MatParallelAInt_NFHp,HydroAInt_NFHp,SmoothWindow,FigNum,'AInt','NFH Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelAIntp_NFH,HydroAIntp_NFH,SmoothWindow,FigNum,'AInt Phos','NFH');
% FigNum=PlotCombinedMat (MatParallelAInt_NFH,HydroAInt_NFH,SmoothWindow,FigNum,'AInt','NFH',subplot1,subplot2);
% 
% % FigNum=PlotCombinedMat (MatParallelAIntp_NFMp,HydroAIntp_NFMp,SmoothWindow,FigNum,'AInt Phos','NFM Phos');
% FigNum=PlotCombinedMat (MatParallelAInt_NFMp,HydroAInt_NFMp,SmoothWindow,FigNum,'AInt','NFM Phos',subplot1,subplot2);
% % FigNum=PlotCombinedMat (MatParallelAIntp_NFM,HydroAIntp_NFM,SmoothWindow,FigNum,'AInt Phos','NFM');
% FigNum=PlotCombinedMat (MatParallelAInt_NFM,HydroAInt_NFM,SmoothWindow,FigNum,'AInt','NFM',subplot1,subplot2);


%%
% FigNum=PlotCombinedMat (MatParallelVimp,HydroVimp,SmoothWindow,FigNum,'Vim Phos','Vim Phos',subplot1,subplot2);
% FigNum=PlotCombinedMat (MatParallelVim,HydroVim,SmoothWindow,FigNum,'Vim','Vim',subplot1,subplot2);


