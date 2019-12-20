function [matout]=ProduceHydroHandShake(protein1,protein2,Persistence,nN,IncludePhos1,IncludePhos2)
% [matout]=ProduceHydroHandShake(protein1,protein2,Persistence,IncludePhos1, IncludePhos2)
% protein1,protein2: Two custom made struct of proteins (see proteinlib).
% Persistence: number/2 of AA aligned in front of an identical number of amino acids. 
% nN: Number of nearest neighbors to calculate for two aligned segments. Defualt is zero which means only the nearest (in front). 
% IncludePhos1,IncludePhos2: whether to include protein phosphorylation
nN=0;
HydroAveragingWindow=5; 
HydroSeq1=hydrophobicity(protein1,IncludePhos1,HydroAveragingWindow);
HydroSeq2=hydrophobicity(protein2,IncludePhos2,HydroAveragingWindow);

seq1=HydroSeq1(protein1.TailStart:protein1.TailEnd);
seq2=HydroSeq2(protein2.TailStart:protein2.TailEnd);

seq1=(seq1>0).*seq1; %only if both parts are hydrophobic possible for attractive interaction
seq2=(seq2>0).*seq2; %only if both parts are hydrophobic possible for attractive interaction

seq1=seq1';
seq2=seq2';

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
Annex=zeros(1,Persistence);
FakeSeq1=horzcat(Annex,seq1,Annex);
FakeSeq2=horzcat(Annex,seq2,Annex);

mat=zeros(len1,len2,nN);
AveragedMat=zeros(len1,len2);

for NNorder=0:nN                           % nN=0 for hydrophobicity. 
    for i=1:len1
        for j=1:len2                    % Consider not calculating the whole matrix, but only half and then transpose!!! j=1:i
            AAwindow1=FakeSeq1(i:i+2*Persistence);
            AAwindow2=fliplr(FakeSeq2(j:j+2*Persistence));           % Change only this if needed parallel
            Annex=zeros(1,NNorder);
            if NNorder==0                                            % This is for no neighbors case. Cannot be deleted because the other cases are counted from both sides.
                mat(i,j,NNorder+1)=AAwindow1*AAwindow2';
                
            else                                                    % This is for the neighbors.
                mat(i,j,NNorder+1)=horzcat(Annex,AAwindow1)*horzcat(AAwindow2,Annex)'+horzcat(AAwindow1,Annex)*horzcat(Annex,AAwindow2)';
            end
            
            
        end
    end
    AveragedMat=AveragedMat+mat(:,:,NNorder+1);
end
AllNN=mat;

matout=AveragedMat;
end

function matout=SetUnits(mat)  % Fixes energy to KbT. Validated with wolfram. 
    ke= 8.988*10^9; % Coulomb's constant: m/F  (meters per farad) 
    e=-1.6021766*10^-19; % electron charge: C  (coulombs)
    angstrom=10^-10; % angstrom in meters
    Kb= 1.38065*10^-23; % Boltzmann constant's: J/K  (joules per kelvin) 
    T= 298.15; % Temperature: Kelvins. 
    epsilon=80; % Dielectric constant. Actually, should not be so high. 
    matout=mat*ke*e^2/(angstrom)/(Kb*T)/epsilon;
    
end
