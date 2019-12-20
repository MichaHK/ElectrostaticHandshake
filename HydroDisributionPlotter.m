function HydroDisributionPlotter(nfl,nfm,nfh,alpha,Vimentin)
PlotOnlyPositive =0;
window=3;
figure;
% use 'start' and 'finish' (found in MakeSub function below) only to change the plot, or the phos indexes and sums
% will be wrong. 
load('C:\Users\user\Dropbox\My Matlab Code\HandShake - Micha\proteins.mat')
%% 
protein=alpha;
includePhos=0;
subplot(4,1,1)
MakeSub(protein,includePhos,window)
        

protein=nfl;
includePhos=1;
subplot(4,1,2)
MakeSub(protein,includePhos,window)

protein=nfm;
includePhos=1;
subplot(4,1,3)
MakeSub(protein,includePhos,window)


% protein=nfm;
% includePhos=1;
% subplot(6,1,4)
% MakeSub(protein,includePhos,window)


% protein=Vimentin;
% includePhos=0;
% subplot(4,2,5)
% MakeSub(protein,includePhos,window)


% protein=nfh;
% includePhos=0;
% subplot(6,1,5)
% MakeSub(protein,includePhos,window)


protein=nfh;
includePhos=1;
subplot(4,1,4)
MakeSub(protein,includePhos,window)

        
function Header=TitleMake(protein,includePhos,AverageScore)
    if includePhos==1
        PhosState='--Phosphorylated';
    else
        PhosState=[];
    end
    Header=strcat(protein.Name, PhosState,10,'Ave Hydropathy(plotted seg):',num2str(AverageScore));
end

function MakeSub(protein,includePhos,window)
%         start=protein.TailStart;
%         finish=protein.TailEnd;
%         start=protein.RodStart;
%         finish=protein.RodEnd;
%         start=protein.TailEnd-100;
%         finish=protein.TailEnd;
%         start=protein.Coil1AStart;
%         finish=protein.Coil1AEnd;
        start=protein.TailStart;
        finish=protein.TailEnd;
        AA1=hydrophobicity(protein,includePhos,window);
        if PlotOnlyPositive==1
            AA1=AA1.*(AA1>0);    
        end
        a=plot(AA1);
        1;
        set(a,'LineWidth',2);
        hold on;
        plot(start:finish,0,'Color','r')
        xlim([start 1100])
        ylim([max(-4,min(AA1)) 4])
        set(gca,'LineWidth',2);
        set(gca,'FontSize',15);
        Total=sum(AA1(start:finish));
        AverageScore=Total/length(AA1(start:finish));
        Header=TitleMake(protein,includePhos,AverageScore);
        title([Header,'. Window Size for Averaging=', num2str(window)])
end
end