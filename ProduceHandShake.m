function [matout]=ProduceHandShake(protein1,protein2,Persistence,nN,IncludePhos1, IncludePhos2)
% [matout]=ProduceHandShake(protein1,protein2,Persistence,nN,IncludePhos1, IncludePhos2)
% protein1,protein2: Two custom made struct of proteins (see proteinlib).
% Persistence: number/2 of AA aligned in front of an identical number of amino acids. 
% nN: Number of nearest neighbors to calculate for two aligned segments. Defualt is zero which means only the nearest (in front). 
% IncludePhos1,IncludePhos2: whether to include protein phosphorylation
matout= struct;

pH=6.8;
[~, ~, ~, ~, ~, ~, seq1]=MCharge(protein1,pH,IncludePhos1,1); % do not limit segment here or phospho calculation will be wrong- whole protein only
[~, ~, ~, ~, ~, ~, seq2]=MCharge(protein2,pH,IncludePhos2,1);
1;
seq1=seq1(protein1.TailStart:protein1.TailEnd);
seq2=seq2(protein2.TailStart:protein2.TailEnd);
disp(['Starting ',protein1.Name,' with ',protein2.Name,' Handshake']);
len1=length(seq1);
len2=length(seq2);

Annex=zeros(1,abs(len1-len2));
if len1>len2
    seq2=horzcat(seq2,Annex);
    len1=length(seq1);
    disp('seqs are of different length')
else if len1<len2
        seq1=horzcat(seq1,Annex);
        len2=length(seq2);
        disp('seqs are of different length')
    end
end


if nN>Persistence
    disp('ERROR: too many neighbors for so little persistence. I changed nN=persistence')
    nN=Persistence;
end
Annex=zeros(1,Persistence+nN);
FakeSeq1=horzcat(Annex,seq1,Annex);
FakeSeq2=horzcat(Annex,seq2,Annex);

mat=zeros(len1,len2,nN);
AveragedMat=zeros(len1,len2);

for NNorder=0:nN
    for i=1:len1
        for j=1:len2                    % Consider not calculating the whole matrix, but only half and then transpose!!! j=1:i
            AAwindow1=FakeSeq1(i+nN:i+nN+2*Persistence);                    % a window centered around i in the original seq seq1. 
            AAwindow2=fliplr(FakeSeq2(j+nN:j+nN+2*Persistence));           % Change only this if needed parallel
            
            if NNorder==0                                            % This is for no neighbors case. Cannot be deleted because the other cases are counted from both sides.
                mat(i,j,NNorder+1)=AAwindow1*AAwindow2';
                
            else                                                    % This is for the neighbors.
                Annex1Left=FakeSeq1(i+nN-NNorder:i+nN-1);
                Annex1Right=FakeSeq1(i+nN+2*Persistence+1:i+nN+2*Persistence+NNorder);
                Annex2Left=FakeSeq2(j+nN-NNorder:j+nN-1);
                Annex2Right=FakeSeq2(j+nN+2*Persistence+1:j+nN+2*Persistence+NNorder);
               %                 mat(i,j,NNorder+1)=horzcat(Annex,AAwindow1)*horzcat(AAwindow2,Annex)'+horzcat(AAwindow1,Annex)*horzcat(Annex,AAwindow2)';
                mat(i,j,NNorder+1)=horzcat(Annex1Left,AAwindow1)*fliplr(horzcat(Annex2Left,AAwindow2))'+horzcat(AAwindow1,Annex1Right)*fliplr(horzcat(AAwindow2,Annex2Right))';
            end
            
            
        end
    end
    ColoumbDecay=1/sqrt((1.4+1.4)^2+((NNorder)*3.5)^2);
    mat(:,:,NNorder+1)=mat(:,:,NNorder+1)*ColoumbDecay;
    AveragedMat=AveragedMat+mat(:,:,NNorder+1);
end
AllNN=SetUnits(mat);
AveragedMat=SetUnits(AveragedMat);
matout.mat=AveragedMat;
matout.protein1=protein1;
matout.protein2=protein2;
end

function matout=SetUnits(mat)  % Fixes energy to KbT. Validated with wolfram. 
    ke= 8.988*10^9; % Coulomb's constant: m/F  (meters per farad) 
    e=-1.6021766*10^-19; % electron charge: C  (coulombs)
    angstrom=10^-10; % angstrom in meters
    Kb= 1.38065*10^-23; % Boltzmann constant's: J/K  (joules per kelvin) 
    T= 298.15; % Temperature: Kelvins. 
    epsilon=80; % for water... We don't what value we should put here
    matout=mat*ke*e^2/(angstrom)/(Kb*T)/epsilon;
    
end
