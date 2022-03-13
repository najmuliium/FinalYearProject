%% Load the dataset 

ECE  = readtable("ECE.csv");

%Delete time table
ECE=ECE(:,2:20);
%% Question 1 data

ECEFP1 = table2array(ECE(:,1));
ECEFP2 = table2array(ECE(:,2));
ECEF3  = table2array(ECE(:,3));
ECEF4  = table2array(ECE(:,4));
ECEF7  = table2array(ECE(:,5));
ECEF8  = table2array(ECE(:,6));
ECEC3  = table2array(ECE(:,7));
ECEC4  = table2array(ECE(:,8));
ECET7  = table2array(ECE(:,9));
ECET8  = table2array(ECE(:,10));
ECEP3  = table2array(ECE(:,11));
ECEP4  = table2array(ECE(:,12));
ECEP7  = table2array(ECE(:,13));
ECEP8  = table2array(ECE(:,14));
ECEO1  = table2array(ECE(:,15));
ECEO2  = table2array(ECE(:,16));
ECEFz  = table2array(ECE(:,17));
ECECz  = table2array(ECE(:,18));
ECEPz  = table2array(ECE(:,19));

%% Splitband for ECE 

[ECEGamma1,ECEBeta1,ECEAlpha1,ECETheta1,ECEDelta1, ECESig0601] = splitband(ECEFP1);
[ECEGamma2,ECEBeta2,ECEAlpha2,ECETheta2,ECEDelta2, ECESig0602] = splitband(ECEFP2);
[ECEGamma3,ECEBeta3,ECEAlpha3,ECETheta3,ECEDelta3, ECESig0603] = splitband(ECEF3);
[ECEGamma4,ECEBeta4,ECEAlpha4,ECETheta4,ECEDelta4, ECESig0604] = splitband(ECEF4);
[ECEGamma5,ECEBeta5,ECEAlpha5,ECETheta5,ECEDelta5, ECESig0605] = splitband(ECEF7);
[ECEGamma6,ECEBeta6,ECEAlpha6,ECETheta6,ECEDelta6, ECESig0606] = splitband(ECEF8);
[ECEGamma7,ECEBeta7,ECEAlpha7,ECETheta7,ECEDelta7, ECESig0607] = splitband(ECEC3);
[ECEGamma8,ECEBeta8,ECEAlpha8,ECETheta8,ECEDelta8, ECESig0608] = splitband(ECEC4);
[ECEGamma9,ECEBeta9,ECEAlpha9,ECETheta9,ECEDelta9, ECESig0609] = splitband(ECET7);
[ECEGamma10,ECEBeta10,ECEAlpha10,ECETheta10,ECEDelta10, ECESig06010] = splitband(ECET8);
[ECEGamma11,ECEBeta11,ECEAlpha11,ECETheta11,ECEDelta11, ECESig06011] = splitband(ECEP3);
[ECEGamma12,ECEBeta12,ECEAlpha12,ECETheta12,ECEDelta12, ECESig06012] = splitband(ECEP4);
[ECEGamma13,ECEBeta13,ECEAlpha13,ECETheta13,ECEDelta13, ECESig06013] = splitband(ECEP7);
[ECEGamma14,ECEBeta14,ECEAlpha14,ECETheta14,ECEDelta14, ECESig06014] = splitband(ECEP8);
[ECEGamma15,ECEBeta15,ECEAlpha15,ECETheta15,ECEDelta15, ECESig06015] = splitband(ECEO1);
[ECEGamma16,ECEBeta16,ECEAlpha16,ECETheta16,ECEDelta16, ECESig06016] = splitband(ECEO2);
[ECEGamma17,ECEBeta17,ECEAlpha17,ECETheta17,ECEDelta17, ECESig06017] = splitband(ECEFz);
[ECEGamma18,ECEBeta18,ECEAlpha18,ECETheta18,ECEDelta18, ECESig06018] = splitband(ECECz);
[ECEGamma19,ECEBeta19,ECEAlpha19,ECETheta19,ECEDelta19, ECESig06019] = splitband(ECEPz);


%% feature extraECEtion for ECE 

ECEs1eECE_bandsG1 = ECEGamma1;
ECEs1eECE_bandsB1 = ECEBeta1;
ECEs1eECE_bandsA1 = ECEAlpha1;
ECEs1eECE_bandsT1 = ECETheta1;
ECEs1eECE_bandsD1 = ECEDelta1;
ECEs2eECE_bandsG2 = ECEGamma2;
ECEs2eECE_bandsB2 = ECEBeta2;
ECEs2eECE_bandsA2 = ECEAlpha2;
ECEs2eECE_bandsT2 = ECETheta2;
ECEs2eECE_bandsD2 = ECEDelta2;
ECEs3eECE_bandsG3 = ECEGamma3;
ECEs3eECE_bandsB3 = ECEBeta3;
ECEs3eECE_bandsA3 = ECEAlpha3;
ECEs3eECE_bandsT3 = ECETheta3;
ECEs3eECE_bandsD3 = ECEDelta3;
ECEs4eECE_bandsG4 = ECEGamma4;
ECEs4eECE_bandsB4 = ECEBeta4;
ECEs4eECE_bandsA4 = ECEAlpha4;
ECEs4eECE_bandsT4 = ECETheta4;
ECEs4eECE_bandsD4 = ECEDelta4;
ECEs5eECE_bandsG5 = ECEGamma5;
ECEs5eECE_bandsB5 = ECEBeta5;
ECEs5eECE_bandsA5 = ECEAlpha5;
ECEs5eECE_bandsT5 = ECETheta5;
ECEs5eECE_bandsD5 = ECEDelta5;
ECEs6eECE_bandsG6 = ECEGamma6;
ECEs6eECE_bandsB6 = ECEBeta6;
ECEs6eECE_bandsA6 = ECEAlpha6;
ECEs6eECE_bandsT6 = ECETheta6;
ECEs6eECE_bandsD6 = ECEDelta6;
ECEs7eECE_bandsG7 = ECEGamma7;
ECEs7eECE_bandsB7 = ECEBeta7;
ECEs7eECE_bandsA7 = ECEAlpha7;
ECEs7eECE_bandsT7 = ECETheta7;
ECEs7eECE_bandsD7 = ECEDelta7;
ECEs8eECE_bandsG8 = ECEGamma8;
ECEs8eECE_bandsB8 = ECEBeta8;
ECEs8eECE_bandsA8 = ECEAlpha8;
ECEs8eECE_bandsT8 = ECETheta8;
ECEs8eECE_bandsD8 = ECEDelta8;
ECEs9eECE_bandsG9 = ECEGamma9;
ECEs9eECE_bandsB9 = ECEBeta9;
ECEs9eECE_bandsA9 = ECEAlpha9;
ECEs9eECE_bandsT9 = ECETheta9;
ECEs9eECE_bandsD9 = ECEDelta9;
ECEs10eECE_bandsG10 = ECEGamma10;
ECEs10eECE_bandsB10 = ECEBeta10;
ECEs10eECE_bandsA10 = ECEAlpha10;
ECEs10eECE_bandsT10 = ECETheta10;
ECEs10eECE_bandsD10 = ECEDelta10;
ECEs11eECE_bandsG11 = ECEGamma11;
ECEs11eECE_bandsB11 = ECEBeta11;
ECEs11eECE_bandsA11 = ECEAlpha11;
ECEs11eECE_bandsT11 = ECETheta11;
ECEs11eECE_bandsD11 = ECEDelta11;
ECEs12eECE_bandsG12 = ECEGamma12;
ECEs12eECE_bandsB12 = ECEBeta12;
ECEs12eECE_bandsA12 = ECEAlpha12;
ECEs12eECE_bandsT12= ECETheta12;
ECEs12eECE_bandsD12 = ECEDelta12;
ECEs13eECE_bandsG13 = ECEGamma13;
ECEs13eECE_bandsB13 = ECEBeta13;
ECEs13eECE_bandsA13 = ECEAlpha13;
ECEs13eECE_bandsT13 = ECETheta13;
ECEs13eECE_bandsD13 = ECEDelta13;
ECEs14eECE_bandsG14 = ECEGamma14;
ECEs14eECE_bandsB14 = ECEBeta14;
ECEs14eECE_bandsA14 = ECEAlpha14;
ECEs14eECE_bandsT14 = ECETheta14;
ECEs14eECE_bandsD14 = ECEDelta14;
ECEs15eECE_bandsG15 = ECEGamma15;
ECEs15eECE_bandsB15 = ECEBeta15;
ECEs15eECE_bandsA15 = ECEAlpha15;
ECEs15eECE_bandsT15 = ECETheta15;
ECEs15eECE_bandsD15 = ECEDelta15;
ECEs16eECE_bandsG16 = ECEGamma16;
ECEs16eECE_bandsB16 = ECEBeta16;
ECEs16eECE_bandsA16 = ECEAlpha16;
ECEs16eECE_bandsT16 = ECETheta16;
ECEs16eECE_bandsD16 = ECEDelta16;
ECEs17eECE_bandsG17 = ECEGamma17;
ECEs17eECE_bandsB17 = ECEBeta17;
ECEs17eECE_bandsA17 = ECEAlpha17;
ECEs17eECE_bandsT17 = ECETheta17;
ECEs17eECE_bandsD17 = ECEDelta17;
ECEs18eECE_bandsG18 = ECEGamma18;
ECEs18eECE_bandsB18 = ECEBeta18;
ECEs18eECE_bandsA18 = ECEAlpha18;
ECEs18eECE_bandsT18 = ECETheta18;
ECEs18eECE_bandsD18 = ECEDelta18;
ECEs19eECE_bandsG19 = ECEGamma19;
ECEs19eECE_bandsB19 = ECEBeta19;
ECEs19eECE_bandsA19 = ECEAlpha19;
ECEs19eECE_bandsT19 = ECETheta19;
ECEs19eECE_bandsD19 = ECEDelta19;
ECEextFP1G1=melcepst(ECEs1eECE_bandsG1,125,'M',12,14,1024,93);
ECEextFP1B1=melcepst(ECEs1eECE_bandsB1,125,'M',12,14,1024,93);
ECEextFP1A1=melcepst(ECEs1eECE_bandsA1,125,'M',12,14,1024,93);
ECEextFP1T1=melcepst(ECEs1eECE_bandsT1,125,'M',12,14,1024,93);
ECEextFP1D1=melcepst(ECEs1eECE_bandsD1,125,'M',12,14,1024,93);
			 
ECEextFP2G2=melcepst(ECEs2eECE_bandsG2,125,'M',12,14,1024,93);
ECEextFP2B2=melcepst(ECEs2eECE_bandsB2,125,'M',12,14,1024,93);
ECEextFP2A2=melcepst(ECEs2eECE_bandsA2,125,'M',12,14,1024,93);
ECEextFP2T2=melcepst(ECEs2eECE_bandsT2,125,'M',12,14,1024,93);
ECEextFP2D2=melcepst(ECEs2eECE_bandsD2,125,'M',12,14,1024,93);
			   
ECEextFP3G3=melcepst(ECEs3eECE_bandsG3,125,'M',12,14,1024,93);
ECEextFP3B3=melcepst(ECEs3eECE_bandsB3,125,'M',12,14,1024,93);
ECEextFP3A3=melcepst(ECEs3eECE_bandsA3,125,'M',12,14,1024,93);
ECEextFP3T3=melcepst(ECEs3eECE_bandsT3,125,'M',12,14,1024,93);
ECEextFP3D3=melcepst(ECEs3eECE_bandsD3,125,'M',12,14,1024,93);
			   
ECEextFP4G4=melcepst(ECEs4eECE_bandsG4,125,'M',12,14,1024,93);
ECEextFP4B4=melcepst(ECEs4eECE_bandsB4,125,'M',12,14,1024,93);
ECEextFP4A4=melcepst(ECEs4eECE_bandsA4,125,'M',12,14,1024,93);
ECEextFP4T4=melcepst(ECEs4eECE_bandsT4,125,'M',12,14,1024,93);
ECEextFP4D4=melcepst(ECEs4eECE_bandsD4,125,'M',12,14,1024,93);
ECEextFP5G5=melcepst(ECEs5eECE_bandsG5,125,'M',12,14,1024,93);
ECEextFP5B5=melcepst(ECEs5eECE_bandsB5,125,'M',12,14,1024,93);
ECEextFP5A5=melcepst(ECEs5eECE_bandsA5,125,'M',12,14,1024,93);
ECEextFP5T5=melcepst(ECEs5eECE_bandsT5,125,'M',12,14,1024,93);
ECEextFP5D5=melcepst(ECEs5eECE_bandsD5,125,'M',12,14,1024,93);
ECEextFP6G6=melcepst(ECEs6eECE_bandsG6,125,'M',12,14,1024,93);
ECEextFP6B6=melcepst(ECEs6eECE_bandsB6,125,'M',12,14,1024,93);
ECEextFP6A6=melcepst(ECEs6eECE_bandsA6,125,'M',12,14,1024,93);
ECEextFP6T6=melcepst(ECEs6eECE_bandsT6,125,'M',12,14,1024,93);
ECEextFP6D6=melcepst(ECEs6eECE_bandsD6,125,'M',12,14,1024,93);
ECEextFP7G7=melcepst(ECEs7eECE_bandsG7,125,'M',12,14,1024,93);
ECEextFP7B7=melcepst(ECEs7eECE_bandsB7,125,'M',12,14,1024,93);
ECEextFP7A7=melcepst(ECEs7eECE_bandsA7,125,'M',12,14,1024,93);
ECEextFP7T7=melcepst(ECEs7eECE_bandsT7,125,'M',12,14,1024,93);
ECEextFP7D7=melcepst(ECEs7eECE_bandsD7,125,'M',12,14,1024,93);
ECEextFP8G8=melcepst(ECEs8eECE_bandsG8,125,'M',12,14,1024,93);
ECEextFP8B8=melcepst(ECEs8eECE_bandsB8,125,'M',12,14,1024,93);
ECEextFP8A8=melcepst(ECEs8eECE_bandsA8,125,'M',12,14,1024,93);
ECEextFP8T8=melcepst(ECEs8eECE_bandsT8,125,'M',12,14,1024,93);
ECEextFP8D8=melcepst(ECEs8eECE_bandsD8,125,'M',12,14,1024,93);
ECEextFP9G9=melcepst(ECEs9eECE_bandsG9,125,'M',12,14,1024,93);
ECEextFP9B9=melcepst(ECEs9eECE_bandsB9,125,'M',12,14,1024,93);
ECEextFP9A9=melcepst(ECEs9eECE_bandsA9,125,'M',12,14,1024,93);
ECEextFP9T9=melcepst(ECEs9eECE_bandsT9,125,'M',12,14,1024,93);
ECEextFP9D9=melcepst(ECEs9eECE_bandsD9,125,'M',12,14,1024,93);
ECEextFP10G10=melcepst(ECEs10eECE_bandsG10,125,'M',12,14,1024,93);
ECEextFP10B10=melcepst(ECEs10eECE_bandsB10,125,'M',12,14,1024,93);
ECEextFP10A10=melcepst(ECEs10eECE_bandsA10,125,'M',12,14,1024,93);
ECEextFP10T10=melcepst(ECEs10eECE_bandsT10,125,'M',12,14,1024,93);
ECEextFP10D10=melcepst(ECEs10eECE_bandsD10,125,'M',12,14,1024,93);
ECEextFP11G11=melcepst(ECEs11eECE_bandsG11,125,'M',12,14,1024,93);
ECEextFP11B11=melcepst(ECEs11eECE_bandsB11,125,'M',12,14,1024,93);
ECEextFP11A11=melcepst(ECEs11eECE_bandsA11,125,'M',12,14,1024,93);
ECEextFP11T11=melcepst(ECEs11eECE_bandsT11,125,'M',12,14,1024,93);
ECEextFP11D11=melcepst(ECEs11eECE_bandsD11,125,'M',12,14,1024,93);
ECEextFP12G12=melcepst(ECEs12eECE_bandsG12,125,'M',12,14,1024,93);
ECEextFP12B12=melcepst(ECEs12eECE_bandsB12,125,'M',12,14,1024,93);
ECEextFP12A12=melcepst(ECEs12eECE_bandsA12,125,'M',12,14,1024,93);
ECEextFP12T12=melcepst(ECEs12eECE_bandsT12,125,'M',12,14,1024,93);
ECEextFP12D12=melcepst(ECEs12eECE_bandsD12,125,'M',12,14,1024,93);
ECEextFP13G13=melcepst(ECEs13eECE_bandsG13,125,'M',12,14,1024,93);
ECEextFP13B13=melcepst(ECEs13eECE_bandsB13,125,'M',12,14,1024,93);
ECEextFP13A13=melcepst(ECEs13eECE_bandsA13,125,'M',12,14,1024,93);
ECEextFP13T13=melcepst(ECEs13eECE_bandsT13,125,'M',12,14,1024,93);
ECEextFP13D13=melcepst(ECEs13eECE_bandsD13,125,'M',12,14,1024,93);
ECEextFP14G14=melcepst(ECEs14eECE_bandsG14,125,'M',12,14,1024,93);
ECEextFP14B14=melcepst(ECEs14eECE_bandsB14,125,'M',12,14,1024,93);
ECEextFP14A14=melcepst(ECEs14eECE_bandsA14,125,'M',12,14,1024,93);
ECEextFP14T14=melcepst(ECEs14eECE_bandsT14,125,'M',12,14,1024,93);
ECEextFP14D14=melcepst(ECEs14eECE_bandsD14,125,'M',12,14,1024,93);
ECEextFP15G15=melcepst(ECEs15eECE_bandsG15,125,'M',12,14,1024,93);
ECEextFP15B15=melcepst(ECEs15eECE_bandsB15,125,'M',12,14,1024,93);
ECEextFP15A15=melcepst(ECEs15eECE_bandsA15,125,'M',12,14,1024,93);
ECEextFP15T15=melcepst(ECEs15eECE_bandsT15,125,'M',12,14,1024,93);
ECEextFP15D15=melcepst(ECEs15eECE_bandsD15,125,'M',12,14,1024,93);
ECEextFP16G16=melcepst(ECEs16eECE_bandsG16,125,'M',12,14,1024,93);
ECEextFP16B16=melcepst(ECEs16eECE_bandsB16,125,'M',12,14,1024,93);
ECEextFP16A16=melcepst(ECEs16eECE_bandsA16,125,'M',12,14,1024,93);
ECEextFP16T16=melcepst(ECEs16eECE_bandsT16,125,'M',12,14,1024,93);
ECEextFP16D16=melcepst(ECEs16eECE_bandsD16,125,'M',12,14,1024,93);
ECEextFP17G17=melcepst(ECEs17eECE_bandsG17,125,'M',12,14,1024,93);
ECEextFP17B17=melcepst(ECEs17eECE_bandsB17,125,'M',12,14,1024,93);
ECEextFP17A17=melcepst(ECEs17eECE_bandsA17,125,'M',12,14,1024,93);
ECEextFP17T17=melcepst(ECEs17eECE_bandsT17,125,'M',12,14,1024,93);
ECEextFP17D17=melcepst(ECEs17eECE_bandsD17,125,'M',12,14,1024,93);
ECEextFP18G18=melcepst(ECEs18eECE_bandsG18,125,'M',12,14,1024,93);
ECEextFP18B18=melcepst(ECEs18eECE_bandsB18,125,'M',12,14,1024,93);
ECEextFP18A18=melcepst(ECEs18eECE_bandsA18,125,'M',12,14,1024,93);
ECEextFP18T18=melcepst(ECEs18eECE_bandsT18,125,'M',12,14,1024,93);
ECEextFP18D18=melcepst(ECEs18eECE_bandsD18,125,'M',12,14,1024,93);
ECEextFP19G19=melcepst(ECEs19eECE_bandsG19,125,'M',12,14,1024,93);
ECEextFP19B19=melcepst(ECEs19eECE_bandsB19,125,'M',12,14,1024,93);
ECEextFP19A19=melcepst(ECEs19eECE_bandsA19,125,'M',12,14,1024,93);
ECEextFP19T19=melcepst(ECEs19eECE_bandsT19,125,'M',12,14,1024,93);
ECEextFP19D19=melcepst(ECEs19eECE_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

ECEAALPHA = [ECEextFP1A1;ECEextFP2A2;ECEextFP3A3; ECEextFP4A4;ECEextFP5A5;ECEextFP6A6;ECEextFP7A7;ECEextFP8A8;ECEextFP9A9;ECEextFP10A10;ECEextFP11A11;ECEextFP12A12;ECEextFP13A13;ECEextFP14A14;ECEextFP15A15;ECEextFP16A16;ECEextFP17A17;ECEextFP18A18;ECEextFP19A19];


%%set expected output


ECEAALPHA(:,13)=0;
ECEAALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,ECEAALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=ECEAALPHA(:,1:12); 
tgtestS=ECEAALPHA(:,13:14);


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
