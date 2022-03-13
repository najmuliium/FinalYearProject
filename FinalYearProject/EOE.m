%% Load the dataset 

EOE  = readtable("EOE.csv");

%Delete time table
EOE=EOE(:,2:20);
%% Question 1 data

EOEFP1 = table2array(EOE(:,1));
EOEFP2 = table2array(EOE(:,2));
EOEF3  = table2array(EOE(:,3));
EOEF4  = table2array(EOE(:,4));
EOEF7  = table2array(EOE(:,5));
EOEF8  = table2array(EOE(:,6));
EOEC3  = table2array(EOE(:,7));
EOEC4  = table2array(EOE(:,8));
EOET7  = table2array(EOE(:,9));
EOET8  = table2array(EOE(:,10));
EOEP3  = table2array(EOE(:,11));
EOEP4  = table2array(EOE(:,12));
EOEP7  = table2array(EOE(:,13));
EOEP8  = table2array(EOE(:,14));
EOEO1  = table2array(EOE(:,15));
EOEO2  = table2array(EOE(:,16));
EOEFz  = table2array(EOE(:,17));
EOECz  = table2array(EOE(:,18));
EOEPz  = table2array(EOE(:,19));

%% Splitband for EOE 

[EOEGamma1,EOEBeta1,EOEAlpha1,EOETheta1,EOEDelta1, EOESig0601] = splitband(EOEFP1);
[EOEGamma2,EOEBeta2,EOEAlpha2,EOETheta2,EOEDelta2, EOESig0602] = splitband(EOEFP2);
[EOEGamma3,EOEBeta3,EOEAlpha3,EOETheta3,EOEDelta3, EOESig0603] = splitband(EOEF3);
[EOEGamma4,EOEBeta4,EOEAlpha4,EOETheta4,EOEDelta4, EOESig0604] = splitband(EOEF4);
[EOEGamma5,EOEBeta5,EOEAlpha5,EOETheta5,EOEDelta5, EOESig0605] = splitband(EOEF7);
[EOEGamma6,EOEBeta6,EOEAlpha6,EOETheta6,EOEDelta6, EOESig0606] = splitband(EOEF8);
[EOEGamma7,EOEBeta7,EOEAlpha7,EOETheta7,EOEDelta7, EOESig0607] = splitband(EOEC3);
[EOEGamma8,EOEBeta8,EOEAlpha8,EOETheta8,EOEDelta8, EOESig0608] = splitband(EOEC4);
[EOEGamma9,EOEBeta9,EOEAlpha9,EOETheta9,EOEDelta9, EOESig0609] = splitband(EOET7);
[EOEGamma10,EOEBeta10,EOEAlpha10,EOETheta10,EOEDelta10, EOESig06010] = splitband(EOET8);
[EOEGamma11,EOEBeta11,EOEAlpha11,EOETheta11,EOEDelta11, EOESig06011] = splitband(EOEP3);
[EOEGamma12,EOEBeta12,EOEAlpha12,EOETheta12,EOEDelta12, EOESig06012] = splitband(EOEP4);
[EOEGamma13,EOEBeta13,EOEAlpha13,EOETheta13,EOEDelta13, EOESig06013] = splitband(EOEP7);
[EOEGamma14,EOEBeta14,EOEAlpha14,EOETheta14,EOEDelta14, EOESig06014] = splitband(EOEP8);
[EOEGamma15,EOEBeta15,EOEAlpha15,EOETheta15,EOEDelta15, EOESig06015] = splitband(EOEO1);
[EOEGamma16,EOEBeta16,EOEAlpha16,EOETheta16,EOEDelta16, EOESig06016] = splitband(EOEO2);
[EOEGamma17,EOEBeta17,EOEAlpha17,EOETheta17,EOEDelta17, EOESig06017] = splitband(EOEFz);
[EOEGamma18,EOEBeta18,EOEAlpha18,EOETheta18,EOEDelta18, EOESig06018] = splitband(EOECz);
[EOEGamma19,EOEBeta19,EOEAlpha19,EOETheta19,EOEDelta19, EOESig06019] = splitband(EOEPz);


%% feature extraEOEtion for EOE 

EOEs1eEOE_bandsG1 = EOEGamma1;
EOEs1eEOE_bandsB1 = EOEBeta1;
EOEs1eEOE_bandsA1 = EOEAlpha1;
EOEs1eEOE_bandsT1 = EOETheta1;
EOEs1eEOE_bandsD1 = EOEDelta1;
EOEs2eEOE_bandsG2 = EOEGamma2;
EOEs2eEOE_bandsB2 = EOEBeta2;
EOEs2eEOE_bandsA2 = EOEAlpha2;
EOEs2eEOE_bandsT2 = EOETheta2;
EOEs2eEOE_bandsD2 = EOEDelta2;
EOEs3eEOE_bandsG3 = EOEGamma3;
EOEs3eEOE_bandsB3 = EOEBeta3;
EOEs3eEOE_bandsA3 = EOEAlpha3;
EOEs3eEOE_bandsT3 = EOETheta3;
EOEs3eEOE_bandsD3 = EOEDelta3;
EOEs4eEOE_bandsG4 = EOEGamma4;
EOEs4eEOE_bandsB4 = EOEBeta4;
EOEs4eEOE_bandsA4 = EOEAlpha4;
EOEs4eEOE_bandsT4 = EOETheta4;
EOEs4eEOE_bandsD4 = EOEDelta4;
EOEs5eEOE_bandsG5 = EOEGamma5;
EOEs5eEOE_bandsB5 = EOEBeta5;
EOEs5eEOE_bandsA5 = EOEAlpha5;
EOEs5eEOE_bandsT5 = EOETheta5;
EOEs5eEOE_bandsD5 = EOEDelta5;
EOEs6eEOE_bandsG6 = EOEGamma6;
EOEs6eEOE_bandsB6 = EOEBeta6;
EOEs6eEOE_bandsA6 = EOEAlpha6;
EOEs6eEOE_bandsT6 = EOETheta6;
EOEs6eEOE_bandsD6 = EOEDelta6;
EOEs7eEOE_bandsG7 = EOEGamma7;
EOEs7eEOE_bandsB7 = EOEBeta7;
EOEs7eEOE_bandsA7 = EOEAlpha7;
EOEs7eEOE_bandsT7 = EOETheta7;
EOEs7eEOE_bandsD7 = EOEDelta7;
EOEs8eEOE_bandsG8 = EOEGamma8;
EOEs8eEOE_bandsB8 = EOEBeta8;
EOEs8eEOE_bandsA8 = EOEAlpha8;
EOEs8eEOE_bandsT8 = EOETheta8;
EOEs8eEOE_bandsD8 = EOEDelta8;
EOEs9eEOE_bandsG9 = EOEGamma9;
EOEs9eEOE_bandsB9 = EOEBeta9;
EOEs9eEOE_bandsA9 = EOEAlpha9;
EOEs9eEOE_bandsT9 = EOETheta9;
EOEs9eEOE_bandsD9 = EOEDelta9;
EOEs10eEOE_bandsG10 = EOEGamma10;
EOEs10eEOE_bandsB10 = EOEBeta10;
EOEs10eEOE_bandsA10 = EOEAlpha10;
EOEs10eEOE_bandsT10 = EOETheta10;
EOEs10eEOE_bandsD10 = EOEDelta10;
EOEs11eEOE_bandsG11 = EOEGamma11;
EOEs11eEOE_bandsB11 = EOEBeta11;
EOEs11eEOE_bandsA11 = EOEAlpha11;
EOEs11eEOE_bandsT11 = EOETheta11;
EOEs11eEOE_bandsD11 = EOEDelta11;
EOEs12eEOE_bandsG12 = EOEGamma12;
EOEs12eEOE_bandsB12 = EOEBeta12;
EOEs12eEOE_bandsA12 = EOEAlpha12;
EOEs12eEOE_bandsT12= EOETheta12;
EOEs12eEOE_bandsD12 = EOEDelta12;
EOEs13eEOE_bandsG13 = EOEGamma13;
EOEs13eEOE_bandsB13 = EOEBeta13;
EOEs13eEOE_bandsA13 = EOEAlpha13;
EOEs13eEOE_bandsT13 = EOETheta13;
EOEs13eEOE_bandsD13 = EOEDelta13;
EOEs14eEOE_bandsG14 = EOEGamma14;
EOEs14eEOE_bandsB14 = EOEBeta14;
EOEs14eEOE_bandsA14 = EOEAlpha14;
EOEs14eEOE_bandsT14 = EOETheta14;
EOEs14eEOE_bandsD14 = EOEDelta14;
EOEs15eEOE_bandsG15 = EOEGamma15;
EOEs15eEOE_bandsB15 = EOEBeta15;
EOEs15eEOE_bandsA15 = EOEAlpha15;
EOEs15eEOE_bandsT15 = EOETheta15;
EOEs15eEOE_bandsD15 = EOEDelta15;
EOEs16eEOE_bandsG16 = EOEGamma16;
EOEs16eEOE_bandsB16 = EOEBeta16;
EOEs16eEOE_bandsA16 = EOEAlpha16;
EOEs16eEOE_bandsT16 = EOETheta16;
EOEs16eEOE_bandsD16 = EOEDelta16;
EOEs17eEOE_bandsG17 = EOEGamma17;
EOEs17eEOE_bandsB17 = EOEBeta17;
EOEs17eEOE_bandsA17 = EOEAlpha17;
EOEs17eEOE_bandsT17 = EOETheta17;
EOEs17eEOE_bandsD17 = EOEDelta17;
EOEs18eEOE_bandsG18 = EOEGamma18;
EOEs18eEOE_bandsB18 = EOEBeta18;
EOEs18eEOE_bandsA18 = EOEAlpha18;
EOEs18eEOE_bandsT18 = EOETheta18;
EOEs18eEOE_bandsD18 = EOEDelta18;
EOEs19eEOE_bandsG19 = EOEGamma19;
EOEs19eEOE_bandsB19 = EOEBeta19;
EOEs19eEOE_bandsA19 = EOEAlpha19;
EOEs19eEOE_bandsT19 = EOETheta19;
EOEs19eEOE_bandsD19 = EOEDelta19;
EOEextFP1G1=melcepst(EOEs1eEOE_bandsG1,125,'M',12,14,1024,93);
EOEextFP1B1=melcepst(EOEs1eEOE_bandsB1,125,'M',12,14,1024,93);
EOEextFP1A1=melcepst(EOEs1eEOE_bandsA1,125,'M',12,14,1024,93);
EOEextFP1T1=melcepst(EOEs1eEOE_bandsT1,125,'M',12,14,1024,93);
EOEextFP1D1=melcepst(EOEs1eEOE_bandsD1,125,'M',12,14,1024,93);
			 
EOEextFP2G2=melcepst(EOEs2eEOE_bandsG2,125,'M',12,14,1024,93);
EOEextFP2B2=melcepst(EOEs2eEOE_bandsB2,125,'M',12,14,1024,93);
EOEextFP2A2=melcepst(EOEs2eEOE_bandsA2,125,'M',12,14,1024,93);
EOEextFP2T2=melcepst(EOEs2eEOE_bandsT2,125,'M',12,14,1024,93);
EOEextFP2D2=melcepst(EOEs2eEOE_bandsD2,125,'M',12,14,1024,93);
			   
EOEextFP3G3=melcepst(EOEs3eEOE_bandsG3,125,'M',12,14,1024,93);
EOEextFP3B3=melcepst(EOEs3eEOE_bandsB3,125,'M',12,14,1024,93);
EOEextFP3A3=melcepst(EOEs3eEOE_bandsA3,125,'M',12,14,1024,93);
EOEextFP3T3=melcepst(EOEs3eEOE_bandsT3,125,'M',12,14,1024,93);
EOEextFP3D3=melcepst(EOEs3eEOE_bandsD3,125,'M',12,14,1024,93);
			   
EOEextFP4G4=melcepst(EOEs4eEOE_bandsG4,125,'M',12,14,1024,93);
EOEextFP4B4=melcepst(EOEs4eEOE_bandsB4,125,'M',12,14,1024,93);
EOEextFP4A4=melcepst(EOEs4eEOE_bandsA4,125,'M',12,14,1024,93);
EOEextFP4T4=melcepst(EOEs4eEOE_bandsT4,125,'M',12,14,1024,93);
EOEextFP4D4=melcepst(EOEs4eEOE_bandsD4,125,'M',12,14,1024,93);
EOEextFP5G5=melcepst(EOEs5eEOE_bandsG5,125,'M',12,14,1024,93);
EOEextFP5B5=melcepst(EOEs5eEOE_bandsB5,125,'M',12,14,1024,93);
EOEextFP5A5=melcepst(EOEs5eEOE_bandsA5,125,'M',12,14,1024,93);
EOEextFP5T5=melcepst(EOEs5eEOE_bandsT5,125,'M',12,14,1024,93);
EOEextFP5D5=melcepst(EOEs5eEOE_bandsD5,125,'M',12,14,1024,93);
EOEextFP6G6=melcepst(EOEs6eEOE_bandsG6,125,'M',12,14,1024,93);
EOEextFP6B6=melcepst(EOEs6eEOE_bandsB6,125,'M',12,14,1024,93);
EOEextFP6A6=melcepst(EOEs6eEOE_bandsA6,125,'M',12,14,1024,93);
EOEextFP6T6=melcepst(EOEs6eEOE_bandsT6,125,'M',12,14,1024,93);
EOEextFP6D6=melcepst(EOEs6eEOE_bandsD6,125,'M',12,14,1024,93);
EOEextFP7G7=melcepst(EOEs7eEOE_bandsG7,125,'M',12,14,1024,93);
EOEextFP7B7=melcepst(EOEs7eEOE_bandsB7,125,'M',12,14,1024,93);
EOEextFP7A7=melcepst(EOEs7eEOE_bandsA7,125,'M',12,14,1024,93);
EOEextFP7T7=melcepst(EOEs7eEOE_bandsT7,125,'M',12,14,1024,93);
EOEextFP7D7=melcepst(EOEs7eEOE_bandsD7,125,'M',12,14,1024,93);
EOEextFP8G8=melcepst(EOEs8eEOE_bandsG8,125,'M',12,14,1024,93);
EOEextFP8B8=melcepst(EOEs8eEOE_bandsB8,125,'M',12,14,1024,93);
EOEextFP8A8=melcepst(EOEs8eEOE_bandsA8,125,'M',12,14,1024,93);
EOEextFP8T8=melcepst(EOEs8eEOE_bandsT8,125,'M',12,14,1024,93);
EOEextFP8D8=melcepst(EOEs8eEOE_bandsD8,125,'M',12,14,1024,93);
EOEextFP9G9=melcepst(EOEs9eEOE_bandsG9,125,'M',12,14,1024,93);
EOEextFP9B9=melcepst(EOEs9eEOE_bandsB9,125,'M',12,14,1024,93);
EOEextFP9A9=melcepst(EOEs9eEOE_bandsA9,125,'M',12,14,1024,93);
EOEextFP9T9=melcepst(EOEs9eEOE_bandsT9,125,'M',12,14,1024,93);
EOEextFP9D9=melcepst(EOEs9eEOE_bandsD9,125,'M',12,14,1024,93);
EOEextFP10G10=melcepst(EOEs10eEOE_bandsG10,125,'M',12,14,1024,93);
EOEextFP10B10=melcepst(EOEs10eEOE_bandsB10,125,'M',12,14,1024,93);
EOEextFP10A10=melcepst(EOEs10eEOE_bandsA10,125,'M',12,14,1024,93);
EOEextFP10T10=melcepst(EOEs10eEOE_bandsT10,125,'M',12,14,1024,93);
EOEextFP10D10=melcepst(EOEs10eEOE_bandsD10,125,'M',12,14,1024,93);
EOEextFP11G11=melcepst(EOEs11eEOE_bandsG11,125,'M',12,14,1024,93);
EOEextFP11B11=melcepst(EOEs11eEOE_bandsB11,125,'M',12,14,1024,93);
EOEextFP11A11=melcepst(EOEs11eEOE_bandsA11,125,'M',12,14,1024,93);
EOEextFP11T11=melcepst(EOEs11eEOE_bandsT11,125,'M',12,14,1024,93);
EOEextFP11D11=melcepst(EOEs11eEOE_bandsD11,125,'M',12,14,1024,93);
EOEextFP12G12=melcepst(EOEs12eEOE_bandsG12,125,'M',12,14,1024,93);
EOEextFP12B12=melcepst(EOEs12eEOE_bandsB12,125,'M',12,14,1024,93);
EOEextFP12A12=melcepst(EOEs12eEOE_bandsA12,125,'M',12,14,1024,93);
EOEextFP12T12=melcepst(EOEs12eEOE_bandsT12,125,'M',12,14,1024,93);
EOEextFP12D12=melcepst(EOEs12eEOE_bandsD12,125,'M',12,14,1024,93);
EOEextFP13G13=melcepst(EOEs13eEOE_bandsG13,125,'M',12,14,1024,93);
EOEextFP13B13=melcepst(EOEs13eEOE_bandsB13,125,'M',12,14,1024,93);
EOEextFP13A13=melcepst(EOEs13eEOE_bandsA13,125,'M',12,14,1024,93);
EOEextFP13T13=melcepst(EOEs13eEOE_bandsT13,125,'M',12,14,1024,93);
EOEextFP13D13=melcepst(EOEs13eEOE_bandsD13,125,'M',12,14,1024,93);
EOEextFP14G14=melcepst(EOEs14eEOE_bandsG14,125,'M',12,14,1024,93);
EOEextFP14B14=melcepst(EOEs14eEOE_bandsB14,125,'M',12,14,1024,93);
EOEextFP14A14=melcepst(EOEs14eEOE_bandsA14,125,'M',12,14,1024,93);
EOEextFP14T14=melcepst(EOEs14eEOE_bandsT14,125,'M',12,14,1024,93);
EOEextFP14D14=melcepst(EOEs14eEOE_bandsD14,125,'M',12,14,1024,93);
EOEextFP15G15=melcepst(EOEs15eEOE_bandsG15,125,'M',12,14,1024,93);
EOEextFP15B15=melcepst(EOEs15eEOE_bandsB15,125,'M',12,14,1024,93);
EOEextFP15A15=melcepst(EOEs15eEOE_bandsA15,125,'M',12,14,1024,93);
EOEextFP15T15=melcepst(EOEs15eEOE_bandsT15,125,'M',12,14,1024,93);
EOEextFP15D15=melcepst(EOEs15eEOE_bandsD15,125,'M',12,14,1024,93);
EOEextFP16G16=melcepst(EOEs16eEOE_bandsG16,125,'M',12,14,1024,93);
EOEextFP16B16=melcepst(EOEs16eEOE_bandsB16,125,'M',12,14,1024,93);
EOEextFP16A16=melcepst(EOEs16eEOE_bandsA16,125,'M',12,14,1024,93);
EOEextFP16T16=melcepst(EOEs16eEOE_bandsT16,125,'M',12,14,1024,93);
EOEextFP16D16=melcepst(EOEs16eEOE_bandsD16,125,'M',12,14,1024,93);
EOEextFP17G17=melcepst(EOEs17eEOE_bandsG17,125,'M',12,14,1024,93);
EOEextFP17B17=melcepst(EOEs17eEOE_bandsB17,125,'M',12,14,1024,93);
EOEextFP17A17=melcepst(EOEs17eEOE_bandsA17,125,'M',12,14,1024,93);
EOEextFP17T17=melcepst(EOEs17eEOE_bandsT17,125,'M',12,14,1024,93);
EOEextFP17D17=melcepst(EOEs17eEOE_bandsD17,125,'M',12,14,1024,93);
EOEextFP18G18=melcepst(EOEs18eEOE_bandsG18,125,'M',12,14,1024,93);
EOEextFP18B18=melcepst(EOEs18eEOE_bandsB18,125,'M',12,14,1024,93);
EOEextFP18A18=melcepst(EOEs18eEOE_bandsA18,125,'M',12,14,1024,93);
EOEextFP18T18=melcepst(EOEs18eEOE_bandsT18,125,'M',12,14,1024,93);
EOEextFP18D18=melcepst(EOEs18eEOE_bandsD18,125,'M',12,14,1024,93);
EOEextFP19G19=melcepst(EOEs19eEOE_bandsG19,125,'M',12,14,1024,93);
EOEextFP19B19=melcepst(EOEs19eEOE_bandsB19,125,'M',12,14,1024,93);
EOEextFP19A19=melcepst(EOEs19eEOE_bandsA19,125,'M',12,14,1024,93);
EOEextFP19T19=melcepst(EOEs19eEOE_bandsT19,125,'M',12,14,1024,93);
EOEextFP19D19=melcepst(EOEs19eEOE_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

EOEAALPHA = [EOEextFP1A1;EOEextFP2A2;EOEextFP3A3; EOEextFP4A4;EOEextFP5A5;EOEextFP6A6;EOEextFP7A7;EOEextFP8A8;EOEextFP9A9;EOEextFP10A10;EOEextFP11A11;EOEextFP12A12;EOEextFP13A13;EOEextFP14A14;EOEextFP15A15;EOEextFP16A16;EOEextFP17A17;EOEextFP18A18;EOEextFP19A19];


%%set expected output


EOEAALPHA(:,13)=0;
EOEAALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,EOEAALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=EOEAALPHA(:,1:12); 
tgtestS=EOEAALPHA(:,13:14);


net=newff(minmax(trainS'),[10,10,2],{'tansig','tansig','purelin'},'traingdx');
net.trainParam.lr = 0.001;       %learning rate
net.trainParam.epochs = 10000;   %maximum number of epochs to train%%epochs is number of iteration for training
net.trainParam.show = 100;       %epochs between displays(NaN for no displays)
net.trainParam.goal = 0.01;     % Sum-squared error goal.
tic;
[net,tr] = train(net,trainS',tgtrainS');
netVA=net;
time=toc;
%drawing table of epoch in desired way
semilogy(tr.epoch,tr.perf);
title('Mean Squared Error of MLP Network');
xlabel('Epoch');
ylabel('Mean Squared Error');

%testing for identification
tic;
y=sim(netVA,testS');%%is to check the result
ts=toc;

out = abs(tgtestS' - y); %%calculate accuracy, higher means better
perf = mse(out);
accuracy=0;
 for j=1:length(out)
 if (out(j)<1.2)%%verification
    accuracy=accuracy+1;
 end
 end

 perAcc=accuracy/length(out)*100;%%accuracy
