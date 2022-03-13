%% Load the dataset 

QS10  = readtable("QS10.csv");

%Delete time table
QS10=QS10(:,2:20);
%% Question 1 data

QS10FP1 = table2array(QS10(:,1));
QS10FP2 = table2array(QS10(:,2));
QS10F3  = table2array(QS10(:,3));
QS10F4  = table2array(QS10(:,4));
QS10F7  = table2array(QS10(:,5));
QS10F8  = table2array(QS10(:,6));
QS10C3  = table2array(QS10(:,7));
QS10C4  = table2array(QS10(:,8));
QS10T7  = table2array(QS10(:,9));
QS10T8  = table2array(QS10(:,10));
QS10P3  = table2array(QS10(:,11));
QS10P4  = table2array(QS10(:,12));
QS10P7  = table2array(QS10(:,13));
QS10P8  = table2array(QS10(:,14));
QS10O1  = table2array(QS10(:,15));
QS10O2  = table2array(QS10(:,16));
QS10Fz  = table2array(QS10(:,17));
QS10Cz  = table2array(QS10(:,18));
QS10Pz  = table2array(QS10(:,19));

%% Splitband for QS10 

[QS10Gamma1,QS10Beta1,QS10Alpha1,QS10Theta1,QS10Delta1, QS10Sig0601] = splitband(QS10FP1);
[QS10Gamma2,QS10Beta2,QS10Alpha2,QS10Theta2,QS10Delta2, QS10Sig0602] = splitband(QS10FP2);
[QS10Gamma3,QS10Beta3,QS10Alpha3,QS10Theta3,QS10Delta3, QS10Sig0603] = splitband(QS10F3);
[QS10Gamma4,QS10Beta4,QS10Alpha4,QS10Theta4,QS10Delta4, QS10Sig0604] = splitband(QS10F4);
[QS10Gamma5,QS10Beta5,QS10Alpha5,QS10Theta5,QS10Delta5, QS10Sig0605] = splitband(QS10F7);
[QS10Gamma6,QS10Beta6,QS10Alpha6,QS10Theta6,QS10Delta6, QS10Sig0606] = splitband(QS10F8);
[QS10Gamma7,QS10Beta7,QS10Alpha7,QS10Theta7,QS10Delta7, QS10Sig0607] = splitband(QS10C3);
[QS10Gamma8,QS10Beta8,QS10Alpha8,QS10Theta8,QS10Delta8, QS10Sig0608] = splitband(QS10C4);
[QS10Gamma9,QS10Beta9,QS10Alpha9,QS10Theta9,QS10Delta9, QS10Sig0609] = splitband(QS10T7);
[QS10Gamma10,QS10Beta10,QS10Alpha10,QS10Theta10,QS10Delta10, QS10Sig06010] = splitband(QS10T8);
[QS10Gamma11,QS10Beta11,QS10Alpha11,QS10Theta11,QS10Delta11, QS10Sig06011] = splitband(QS10P3);
[QS10Gamma12,QS10Beta12,QS10Alpha12,QS10Theta12,QS10Delta12, QS10Sig06012] = splitband(QS10P4);
[QS10Gamma13,QS10Beta13,QS10Alpha13,QS10Theta13,QS10Delta13, QS10Sig06013] = splitband(QS10P7);
[QS10Gamma14,QS10Beta14,QS10Alpha14,QS10Theta14,QS10Delta14, QS10Sig06014] = splitband(QS10P8);
[QS10Gamma15,QS10Beta15,QS10Alpha15,QS10Theta15,QS10Delta15, QS10Sig06015] = splitband(QS10O1);
[QS10Gamma16,QS10Beta16,QS10Alpha16,QS10Theta16,QS10Delta16, QS10Sig06016] = splitband(QS10O2);
[QS10Gamma17,QS10Beta17,QS10Alpha17,QS10Theta17,QS10Delta17, QS10Sig06017] = splitband(QS10Fz);
[QS10Gamma18,QS10Beta18,QS10Alpha18,QS10Theta18,QS10Delta18, QS10Sig06018] = splitband(QS10Cz);
[QS10Gamma19,QS10Beta19,QS10Alpha19,QS10Theta19,QS10Delta19, QS10Sig06019] = splitband(QS10Pz);


%% feature extraQS10tion for QS10 

QS10s1eQS10_bandsG1 = QS10Gamma1;
QS10s1eQS10_bandsB1 = QS10Beta1;
QS10s1eQS10_bandsA1 = QS10Alpha1;
QS10s1eQS10_bandsT1 = QS10Theta1;
QS10s1eQS10_bandsD1 = QS10Delta1;
QS10s2eQS10_bandsG2 = QS10Gamma2;
QS10s2eQS10_bandsB2 = QS10Beta2;
QS10s2eQS10_bandsA2 = QS10Alpha2;
QS10s2eQS10_bandsT2 = QS10Theta2;
QS10s2eQS10_bandsD2 = QS10Delta2;
QS10s3eQS10_bandsG3 = QS10Gamma3;
QS10s3eQS10_bandsB3 = QS10Beta3;
QS10s3eQS10_bandsA3 = QS10Alpha3;
QS10s3eQS10_bandsT3 = QS10Theta3;
QS10s3eQS10_bandsD3 = QS10Delta3;
QS10s4eQS10_bandsG4 = QS10Gamma4;
QS10s4eQS10_bandsB4 = QS10Beta4;
QS10s4eQS10_bandsA4 = QS10Alpha4;
QS10s4eQS10_bandsT4 = QS10Theta4;
QS10s4eQS10_bandsD4 = QS10Delta4;
QS10s5eQS10_bandsG5 = QS10Gamma5;
QS10s5eQS10_bandsB5 = QS10Beta5;
QS10s5eQS10_bandsA5 = QS10Alpha5;
QS10s5eQS10_bandsT5 = QS10Theta5;
QS10s5eQS10_bandsD5 = QS10Delta5;
QS10s6eQS10_bandsG6 = QS10Gamma6;
QS10s6eQS10_bandsB6 = QS10Beta6;
QS10s6eQS10_bandsA6 = QS10Alpha6;
QS10s6eQS10_bandsT6 = QS10Theta6;
QS10s6eQS10_bandsD6 = QS10Delta6;
QS10s7eQS10_bandsG7 = QS10Gamma7;
QS10s7eQS10_bandsB7 = QS10Beta7;
QS10s7eQS10_bandsA7 = QS10Alpha7;
QS10s7eQS10_bandsT7 = QS10Theta7;
QS10s7eQS10_bandsD7 = QS10Delta7;
QS10s8eQS10_bandsG8 = QS10Gamma8;
QS10s8eQS10_bandsB8 = QS10Beta8;
QS10s8eQS10_bandsA8 = QS10Alpha8;
QS10s8eQS10_bandsT8 = QS10Theta8;
QS10s8eQS10_bandsD8 = QS10Delta8;
QS10s9eQS10_bandsG9 = QS10Gamma9;
QS10s9eQS10_bandsB9 = QS10Beta9;
QS10s9eQS10_bandsA9 = QS10Alpha9;
QS10s9eQS10_bandsT9 = QS10Theta9;
QS10s9eQS10_bandsD9 = QS10Delta9;
QS10s10eQS10_bandsG10 = QS10Gamma10;
QS10s10eQS10_bandsB10 = QS10Beta10;
QS10s10eQS10_bandsA10 = QS10Alpha10;
QS10s10eQS10_bandsT10 = QS10Theta10;
QS10s10eQS10_bandsD10 = QS10Delta10;
QS10s11eQS10_bandsG11 = QS10Gamma11;
QS10s11eQS10_bandsB11 = QS10Beta11;
QS10s11eQS10_bandsA11 = QS10Alpha11;
QS10s11eQS10_bandsT11 = QS10Theta11;
QS10s11eQS10_bandsD11 = QS10Delta11;
QS10s12eQS10_bandsG12 = QS10Gamma12;
QS10s12eQS10_bandsB12 = QS10Beta12;
QS10s12eQS10_bandsA12 = QS10Alpha12;
QS10s12eQS10_bandsT12= QS10Theta12;
QS10s12eQS10_bandsD12 = QS10Delta12;
QS10s13eQS10_bandsG13 = QS10Gamma13;
QS10s13eQS10_bandsB13 = QS10Beta13;
QS10s13eQS10_bandsA13 = QS10Alpha13;
QS10s13eQS10_bandsT13 = QS10Theta13;
QS10s13eQS10_bandsD13 = QS10Delta13;
QS10s14eQS10_bandsG14 = QS10Gamma14;
QS10s14eQS10_bandsB14 = QS10Beta14;
QS10s14eQS10_bandsA14 = QS10Alpha14;
QS10s14eQS10_bandsT14 = QS10Theta14;
QS10s14eQS10_bandsD14 = QS10Delta14;
QS10s15eQS10_bandsG15 = QS10Gamma15;
QS10s15eQS10_bandsB15 = QS10Beta15;
QS10s15eQS10_bandsA15 = QS10Alpha15;
QS10s15eQS10_bandsT15 = QS10Theta15;
QS10s15eQS10_bandsD15 = QS10Delta15;
QS10s16eQS10_bandsG16 = QS10Gamma16;
QS10s16eQS10_bandsB16 = QS10Beta16;
QS10s16eQS10_bandsA16 = QS10Alpha16;
QS10s16eQS10_bandsT16 = QS10Theta16;
QS10s16eQS10_bandsD16 = QS10Delta16;
QS10s17eQS10_bandsG17 = QS10Gamma17;
QS10s17eQS10_bandsB17 = QS10Beta17;
QS10s17eQS10_bandsA17 = QS10Alpha17;
QS10s17eQS10_bandsT17 = QS10Theta17;
QS10s17eQS10_bandsD17 = QS10Delta17;
QS10s18eQS10_bandsG18 = QS10Gamma18;
QS10s18eQS10_bandsB18 = QS10Beta18;
QS10s18eQS10_bandsA18 = QS10Alpha18;
QS10s18eQS10_bandsT18 = QS10Theta18;
QS10s18eQS10_bandsD18 = QS10Delta18;
QS10s19eQS10_bandsG19 = QS10Gamma19;
QS10s19eQS10_bandsB19 = QS10Beta19;
QS10s19eQS10_bandsA19 = QS10Alpha19;
QS10s19eQS10_bandsT19 = QS10Theta19;
QS10s19eQS10_bandsD19 = QS10Delta19;
QS10extFP1G1=melcepst(QS10s1eQS10_bandsG1,125,'M',12,14,1024,93);
QS10extFP1B1=melcepst(QS10s1eQS10_bandsB1,125,'M',12,14,1024,93);
QS10extFP1A1=melcepst(QS10s1eQS10_bandsA1,125,'M',12,14,1024,93);
QS10extFP1T1=melcepst(QS10s1eQS10_bandsT1,125,'M',12,14,1024,93);
QS10extFP1D1=melcepst(QS10s1eQS10_bandsD1,125,'M',12,14,1024,93);
			 
QS10extFP2G2=melcepst(QS10s2eQS10_bandsG2,125,'M',12,14,1024,93);
QS10extFP2B2=melcepst(QS10s2eQS10_bandsB2,125,'M',12,14,1024,93);
QS10extFP2A2=melcepst(QS10s2eQS10_bandsA2,125,'M',12,14,1024,93);
QS10extFP2T2=melcepst(QS10s2eQS10_bandsT2,125,'M',12,14,1024,93);
QS10extFP2D2=melcepst(QS10s2eQS10_bandsD2,125,'M',12,14,1024,93);
			   
QS10extFP3G3=melcepst(QS10s3eQS10_bandsG3,125,'M',12,14,1024,93);
QS10extFP3B3=melcepst(QS10s3eQS10_bandsB3,125,'M',12,14,1024,93);
QS10extFP3A3=melcepst(QS10s3eQS10_bandsA3,125,'M',12,14,1024,93);
QS10extFP3T3=melcepst(QS10s3eQS10_bandsT3,125,'M',12,14,1024,93);
QS10extFP3D3=melcepst(QS10s3eQS10_bandsD3,125,'M',12,14,1024,93);
			   
QS10extFP4G4=melcepst(QS10s4eQS10_bandsG4,125,'M',12,14,1024,93);
QS10extFP4B4=melcepst(QS10s4eQS10_bandsB4,125,'M',12,14,1024,93);
QS10extFP4A4=melcepst(QS10s4eQS10_bandsA4,125,'M',12,14,1024,93);
QS10extFP4T4=melcepst(QS10s4eQS10_bandsT4,125,'M',12,14,1024,93);
QS10extFP4D4=melcepst(QS10s4eQS10_bandsD4,125,'M',12,14,1024,93);
QS10extFP5G5=melcepst(QS10s5eQS10_bandsG5,125,'M',12,14,1024,93);
QS10extFP5B5=melcepst(QS10s5eQS10_bandsB5,125,'M',12,14,1024,93);
QS10extFP5A5=melcepst(QS10s5eQS10_bandsA5,125,'M',12,14,1024,93);
QS10extFP5T5=melcepst(QS10s5eQS10_bandsT5,125,'M',12,14,1024,93);
QS10extFP5D5=melcepst(QS10s5eQS10_bandsD5,125,'M',12,14,1024,93);
QS10extFP6G6=melcepst(QS10s6eQS10_bandsG6,125,'M',12,14,1024,93);
QS10extFP6B6=melcepst(QS10s6eQS10_bandsB6,125,'M',12,14,1024,93);
QS10extFP6A6=melcepst(QS10s6eQS10_bandsA6,125,'M',12,14,1024,93);
QS10extFP6T6=melcepst(QS10s6eQS10_bandsT6,125,'M',12,14,1024,93);
QS10extFP6D6=melcepst(QS10s6eQS10_bandsD6,125,'M',12,14,1024,93);
QS10extFP7G7=melcepst(QS10s7eQS10_bandsG7,125,'M',12,14,1024,93);
QS10extFP7B7=melcepst(QS10s7eQS10_bandsB7,125,'M',12,14,1024,93);
QS10extFP7A7=melcepst(QS10s7eQS10_bandsA7,125,'M',12,14,1024,93);
QS10extFP7T7=melcepst(QS10s7eQS10_bandsT7,125,'M',12,14,1024,93);
QS10extFP7D7=melcepst(QS10s7eQS10_bandsD7,125,'M',12,14,1024,93);
QS10extFP8G8=melcepst(QS10s8eQS10_bandsG8,125,'M',12,14,1024,93);
QS10extFP8B8=melcepst(QS10s8eQS10_bandsB8,125,'M',12,14,1024,93);
QS10extFP8A8=melcepst(QS10s8eQS10_bandsA8,125,'M',12,14,1024,93);
QS10extFP8T8=melcepst(QS10s8eQS10_bandsT8,125,'M',12,14,1024,93);
QS10extFP8D8=melcepst(QS10s8eQS10_bandsD8,125,'M',12,14,1024,93);
QS10extFP9G9=melcepst(QS10s9eQS10_bandsG9,125,'M',12,14,1024,93);
QS10extFP9B9=melcepst(QS10s9eQS10_bandsB9,125,'M',12,14,1024,93);
QS10extFP9A9=melcepst(QS10s9eQS10_bandsA9,125,'M',12,14,1024,93);
QS10extFP9T9=melcepst(QS10s9eQS10_bandsT9,125,'M',12,14,1024,93);
QS10extFP9D9=melcepst(QS10s9eQS10_bandsD9,125,'M',12,14,1024,93);
QS10extFP10G10=melcepst(QS10s10eQS10_bandsG10,125,'M',12,14,1024,93);
QS10extFP10B10=melcepst(QS10s10eQS10_bandsB10,125,'M',12,14,1024,93);
QS10extFP10A10=melcepst(QS10s10eQS10_bandsA10,125,'M',12,14,1024,93);
QS10extFP10T10=melcepst(QS10s10eQS10_bandsT10,125,'M',12,14,1024,93);
QS10extFP10D10=melcepst(QS10s10eQS10_bandsD10,125,'M',12,14,1024,93);
QS10extFP11G11=melcepst(QS10s11eQS10_bandsG11,125,'M',12,14,1024,93);
QS10extFP11B11=melcepst(QS10s11eQS10_bandsB11,125,'M',12,14,1024,93);
QS10extFP11A11=melcepst(QS10s11eQS10_bandsA11,125,'M',12,14,1024,93);
QS10extFP11T11=melcepst(QS10s11eQS10_bandsT11,125,'M',12,14,1024,93);
QS10extFP11D11=melcepst(QS10s11eQS10_bandsD11,125,'M',12,14,1024,93);
QS10extFP12G12=melcepst(QS10s12eQS10_bandsG12,125,'M',12,14,1024,93);
QS10extFP12B12=melcepst(QS10s12eQS10_bandsB12,125,'M',12,14,1024,93);
QS10extFP12A12=melcepst(QS10s12eQS10_bandsA12,125,'M',12,14,1024,93);
QS10extFP12T12=melcepst(QS10s12eQS10_bandsT12,125,'M',12,14,1024,93);
QS10extFP12D12=melcepst(QS10s12eQS10_bandsD12,125,'M',12,14,1024,93);
QS10extFP13G13=melcepst(QS10s13eQS10_bandsG13,125,'M',12,14,1024,93);
QS10extFP13B13=melcepst(QS10s13eQS10_bandsB13,125,'M',12,14,1024,93);
QS10extFP13A13=melcepst(QS10s13eQS10_bandsA13,125,'M',12,14,1024,93);
QS10extFP13T13=melcepst(QS10s13eQS10_bandsT13,125,'M',12,14,1024,93);
QS10extFP13D13=melcepst(QS10s13eQS10_bandsD13,125,'M',12,14,1024,93);
QS10extFP14G14=melcepst(QS10s14eQS10_bandsG14,125,'M',12,14,1024,93);
QS10extFP14B14=melcepst(QS10s14eQS10_bandsB14,125,'M',12,14,1024,93);
QS10extFP14A14=melcepst(QS10s14eQS10_bandsA14,125,'M',12,14,1024,93);
QS10extFP14T14=melcepst(QS10s14eQS10_bandsT14,125,'M',12,14,1024,93);
QS10extFP14D14=melcepst(QS10s14eQS10_bandsD14,125,'M',12,14,1024,93);
QS10extFP15G15=melcepst(QS10s15eQS10_bandsG15,125,'M',12,14,1024,93);
QS10extFP15B15=melcepst(QS10s15eQS10_bandsB15,125,'M',12,14,1024,93);
QS10extFP15A15=melcepst(QS10s15eQS10_bandsA15,125,'M',12,14,1024,93);
QS10extFP15T15=melcepst(QS10s15eQS10_bandsT15,125,'M',12,14,1024,93);
QS10extFP15D15=melcepst(QS10s15eQS10_bandsD15,125,'M',12,14,1024,93);
QS10extFP16G16=melcepst(QS10s16eQS10_bandsG16,125,'M',12,14,1024,93);
QS10extFP16B16=melcepst(QS10s16eQS10_bandsB16,125,'M',12,14,1024,93);
QS10extFP16A16=melcepst(QS10s16eQS10_bandsA16,125,'M',12,14,1024,93);
QS10extFP16T16=melcepst(QS10s16eQS10_bandsT16,125,'M',12,14,1024,93);
QS10extFP16D16=melcepst(QS10s16eQS10_bandsD16,125,'M',12,14,1024,93);
QS10extFP17G17=melcepst(QS10s17eQS10_bandsG17,125,'M',12,14,1024,93);
QS10extFP17B17=melcepst(QS10s17eQS10_bandsB17,125,'M',12,14,1024,93);
QS10extFP17A17=melcepst(QS10s17eQS10_bandsA17,125,'M',12,14,1024,93);
QS10extFP17T17=melcepst(QS10s17eQS10_bandsT17,125,'M',12,14,1024,93);
QS10extFP17D17=melcepst(QS10s17eQS10_bandsD17,125,'M',12,14,1024,93);
QS10extFP18G18=melcepst(QS10s18eQS10_bandsG18,125,'M',12,14,1024,93);
QS10extFP18B18=melcepst(QS10s18eQS10_bandsB18,125,'M',12,14,1024,93);
QS10extFP18A18=melcepst(QS10s18eQS10_bandsA18,125,'M',12,14,1024,93);
QS10extFP18T18=melcepst(QS10s18eQS10_bandsT18,125,'M',12,14,1024,93);
QS10extFP18D18=melcepst(QS10s18eQS10_bandsD18,125,'M',12,14,1024,93);
QS10extFP19G19=melcepst(QS10s19eQS10_bandsG19,125,'M',12,14,1024,93);
QS10extFP19B19=melcepst(QS10s19eQS10_bandsB19,125,'M',12,14,1024,93);
QS10extFP19A19=melcepst(QS10s19eQS10_bandsA19,125,'M',12,14,1024,93);
QS10extFP19T19=melcepst(QS10s19eQS10_bandsT19,125,'M',12,14,1024,93);
QS10extFP19D19=melcepst(QS10s19eQS10_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS10AALPHA = [QS10extFP1A1;QS10extFP2A2;QS10extFP3A3; QS10extFP4A4;QS10extFP5A5;QS10extFP6A6;QS10extFP7A7;QS10extFP8A8;QS10extFP9A9;QS10extFP10A10;QS10extFP11A11;QS10extFP12A12;QS10extFP13A13;QS10extFP14A14;QS10extFP15A15;QS10extFP16A16;QS10extFP17A17;QS10extFP18A18;QS10extFP19A19];


%%set expected output


QS10AALPHA(:,13)=0;
QS10AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS10AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS10AALPHA(:,1:12); 
tgtestS=QS10AALPHA(:,13:14);


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
