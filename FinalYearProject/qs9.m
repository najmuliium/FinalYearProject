%% Load the dataset 

QS9  = readtable("QS9.csv");

%Delete time table
QS9=QS9(:,2:20);
%% Question 1 data

QS9FP1 = table2array(QS9(:,1));
QS9FP2 = table2array(QS9(:,2));
QS9F3  = table2array(QS9(:,3));
QS9F4  = table2array(QS9(:,4));
QS9F7  = table2array(QS9(:,5));
QS9F8  = table2array(QS9(:,6));
QS9C3  = table2array(QS9(:,7));
QS9C4  = table2array(QS9(:,8));
QS9T7  = table2array(QS9(:,9));
QS9T8  = table2array(QS9(:,10));
QS9P3  = table2array(QS9(:,11));
QS9P4  = table2array(QS9(:,12));
QS9P7  = table2array(QS9(:,13));
QS9P8  = table2array(QS9(:,14));
QS9O1  = table2array(QS9(:,15));
QS9O2  = table2array(QS9(:,16));
QS9Fz  = table2array(QS9(:,17));
QS9Cz  = table2array(QS9(:,18));
QS9Pz  = table2array(QS9(:,19));

%% Splitband for QS9 

[QS9Gamma1,QS9Beta1,QS9Alpha1,QS9Theta1,QS9Delta1, QS9Sig0601] = splitband(QS9FP1);
[QS9Gamma2,QS9Beta2,QS9Alpha2,QS9Theta2,QS9Delta2, QS9Sig0602] = splitband(QS9FP2);
[QS9Gamma3,QS9Beta3,QS9Alpha3,QS9Theta3,QS9Delta3, QS9Sig0603] = splitband(QS9F3);
[QS9Gamma4,QS9Beta4,QS9Alpha4,QS9Theta4,QS9Delta4, QS9Sig0604] = splitband(QS9F4);
[QS9Gamma5,QS9Beta5,QS9Alpha5,QS9Theta5,QS9Delta5, QS9Sig0605] = splitband(QS9F7);
[QS9Gamma6,QS9Beta6,QS9Alpha6,QS9Theta6,QS9Delta6, QS9Sig0606] = splitband(QS9F8);
[QS9Gamma7,QS9Beta7,QS9Alpha7,QS9Theta7,QS9Delta7, QS9Sig0607] = splitband(QS9C3);
[QS9Gamma8,QS9Beta8,QS9Alpha8,QS9Theta8,QS9Delta8, QS9Sig0608] = splitband(QS9C4);
[QS9Gamma9,QS9Beta9,QS9Alpha9,QS9Theta9,QS9Delta9, QS9Sig0609] = splitband(QS9T7);
[QS9Gamma10,QS9Beta10,QS9Alpha10,QS9Theta10,QS9Delta10, QS9Sig06010] = splitband(QS9T8);
[QS9Gamma11,QS9Beta11,QS9Alpha11,QS9Theta11,QS9Delta11, QS9Sig06011] = splitband(QS9P3);
[QS9Gamma12,QS9Beta12,QS9Alpha12,QS9Theta12,QS9Delta12, QS9Sig06012] = splitband(QS9P4);
[QS9Gamma13,QS9Beta13,QS9Alpha13,QS9Theta13,QS9Delta13, QS9Sig06013] = splitband(QS9P7);
[QS9Gamma14,QS9Beta14,QS9Alpha14,QS9Theta14,QS9Delta14, QS9Sig06014] = splitband(QS9P8);
[QS9Gamma15,QS9Beta15,QS9Alpha15,QS9Theta15,QS9Delta15, QS9Sig06015] = splitband(QS9O1);
[QS9Gamma16,QS9Beta16,QS9Alpha16,QS9Theta16,QS9Delta16, QS9Sig06016] = splitband(QS9O2);
[QS9Gamma17,QS9Beta17,QS9Alpha17,QS9Theta17,QS9Delta17, QS9Sig06017] = splitband(QS9Fz);
[QS9Gamma18,QS9Beta18,QS9Alpha18,QS9Theta18,QS9Delta18, QS9Sig06018] = splitband(QS9Cz);
[QS9Gamma19,QS9Beta19,QS9Alpha19,QS9Theta19,QS9Delta19, QS9Sig06019] = splitband(QS9Pz);


%% feature extraQS9tion for QS9 

QS9s1eQS9_bandsG1 = QS9Gamma1;
QS9s1eQS9_bandsB1 = QS9Beta1;
QS9s1eQS9_bandsA1 = QS9Alpha1;
QS9s1eQS9_bandsT1 = QS9Theta1;
QS9s1eQS9_bandsD1 = QS9Delta1;
QS9s2eQS9_bandsG2 = QS9Gamma2;
QS9s2eQS9_bandsB2 = QS9Beta2;
QS9s2eQS9_bandsA2 = QS9Alpha2;
QS9s2eQS9_bandsT2 = QS9Theta2;
QS9s2eQS9_bandsD2 = QS9Delta2;
QS9s3eQS9_bandsG3 = QS9Gamma3;
QS9s3eQS9_bandsB3 = QS9Beta3;
QS9s3eQS9_bandsA3 = QS9Alpha3;
QS9s3eQS9_bandsT3 = QS9Theta3;
QS9s3eQS9_bandsD3 = QS9Delta3;
QS9s4eQS9_bandsG4 = QS9Gamma4;
QS9s4eQS9_bandsB4 = QS9Beta4;
QS9s4eQS9_bandsA4 = QS9Alpha4;
QS9s4eQS9_bandsT4 = QS9Theta4;
QS9s4eQS9_bandsD4 = QS9Delta4;
QS9s5eQS9_bandsG5 = QS9Gamma5;
QS9s5eQS9_bandsB5 = QS9Beta5;
QS9s5eQS9_bandsA5 = QS9Alpha5;
QS9s5eQS9_bandsT5 = QS9Theta5;
QS9s5eQS9_bandsD5 = QS9Delta5;
QS9s6eQS9_bandsG6 = QS9Gamma6;
QS9s6eQS9_bandsB6 = QS9Beta6;
QS9s6eQS9_bandsA6 = QS9Alpha6;
QS9s6eQS9_bandsT6 = QS9Theta6;
QS9s6eQS9_bandsD6 = QS9Delta6;
QS9s7eQS9_bandsG7 = QS9Gamma7;
QS9s7eQS9_bandsB7 = QS9Beta7;
QS9s7eQS9_bandsA7 = QS9Alpha7;
QS9s7eQS9_bandsT7 = QS9Theta7;
QS9s7eQS9_bandsD7 = QS9Delta7;
QS9s8eQS9_bandsG8 = QS9Gamma8;
QS9s8eQS9_bandsB8 = QS9Beta8;
QS9s8eQS9_bandsA8 = QS9Alpha8;
QS9s8eQS9_bandsT8 = QS9Theta8;
QS9s8eQS9_bandsD8 = QS9Delta8;
QS9s9eQS9_bandsG9 = QS9Gamma9;
QS9s9eQS9_bandsB9 = QS9Beta9;
QS9s9eQS9_bandsA9 = QS9Alpha9;
QS9s9eQS9_bandsT9 = QS9Theta9;
QS9s9eQS9_bandsD9 = QS9Delta9;
QS9s10eQS9_bandsG10 = QS9Gamma10;
QS9s10eQS9_bandsB10 = QS9Beta10;
QS9s10eQS9_bandsA10 = QS9Alpha10;
QS9s10eQS9_bandsT10 = QS9Theta10;
QS9s10eQS9_bandsD10 = QS9Delta10;
QS9s11eQS9_bandsG11 = QS9Gamma11;
QS9s11eQS9_bandsB11 = QS9Beta11;
QS9s11eQS9_bandsA11 = QS9Alpha11;
QS9s11eQS9_bandsT11 = QS9Theta11;
QS9s11eQS9_bandsD11 = QS9Delta11;
QS9s12eQS9_bandsG12 = QS9Gamma12;
QS9s12eQS9_bandsB12 = QS9Beta12;
QS9s12eQS9_bandsA12 = QS9Alpha12;
QS9s12eQS9_bandsT12= QS9Theta12;
QS9s12eQS9_bandsD12 = QS9Delta12;
QS9s13eQS9_bandsG13 = QS9Gamma13;
QS9s13eQS9_bandsB13 = QS9Beta13;
QS9s13eQS9_bandsA13 = QS9Alpha13;
QS9s13eQS9_bandsT13 = QS9Theta13;
QS9s13eQS9_bandsD13 = QS9Delta13;
QS9s14eQS9_bandsG14 = QS9Gamma14;
QS9s14eQS9_bandsB14 = QS9Beta14;
QS9s14eQS9_bandsA14 = QS9Alpha14;
QS9s14eQS9_bandsT14 = QS9Theta14;
QS9s14eQS9_bandsD14 = QS9Delta14;
QS9s15eQS9_bandsG15 = QS9Gamma15;
QS9s15eQS9_bandsB15 = QS9Beta15;
QS9s15eQS9_bandsA15 = QS9Alpha15;
QS9s15eQS9_bandsT15 = QS9Theta15;
QS9s15eQS9_bandsD15 = QS9Delta15;
QS9s16eQS9_bandsG16 = QS9Gamma16;
QS9s16eQS9_bandsB16 = QS9Beta16;
QS9s16eQS9_bandsA16 = QS9Alpha16;
QS9s16eQS9_bandsT16 = QS9Theta16;
QS9s16eQS9_bandsD16 = QS9Delta16;
QS9s17eQS9_bandsG17 = QS9Gamma17;
QS9s17eQS9_bandsB17 = QS9Beta17;
QS9s17eQS9_bandsA17 = QS9Alpha17;
QS9s17eQS9_bandsT17 = QS9Theta17;
QS9s17eQS9_bandsD17 = QS9Delta17;
QS9s18eQS9_bandsG18 = QS9Gamma18;
QS9s18eQS9_bandsB18 = QS9Beta18;
QS9s18eQS9_bandsA18 = QS9Alpha18;
QS9s18eQS9_bandsT18 = QS9Theta18;
QS9s18eQS9_bandsD18 = QS9Delta18;
QS9s19eQS9_bandsG19 = QS9Gamma19;
QS9s19eQS9_bandsB19 = QS9Beta19;
QS9s19eQS9_bandsA19 = QS9Alpha19;
QS9s19eQS9_bandsT19 = QS9Theta19;
QS9s19eQS9_bandsD19 = QS9Delta19;
QS9extFP1G1=melcepst(QS9s1eQS9_bandsG1,125,'M',12,14,1024,93);
QS9extFP1B1=melcepst(QS9s1eQS9_bandsB1,125,'M',12,14,1024,93);
QS9extFP1A1=melcepst(QS9s1eQS9_bandsA1,125,'M',12,14,1024,93);
QS9extFP1T1=melcepst(QS9s1eQS9_bandsT1,125,'M',12,14,1024,93);
QS9extFP1D1=melcepst(QS9s1eQS9_bandsD1,125,'M',12,14,1024,93);
			 
QS9extFP2G2=melcepst(QS9s2eQS9_bandsG2,125,'M',12,14,1024,93);
QS9extFP2B2=melcepst(QS9s2eQS9_bandsB2,125,'M',12,14,1024,93);
QS9extFP2A2=melcepst(QS9s2eQS9_bandsA2,125,'M',12,14,1024,93);
QS9extFP2T2=melcepst(QS9s2eQS9_bandsT2,125,'M',12,14,1024,93);
QS9extFP2D2=melcepst(QS9s2eQS9_bandsD2,125,'M',12,14,1024,93);
			   
QS9extFP3G3=melcepst(QS9s3eQS9_bandsG3,125,'M',12,14,1024,93);
QS9extFP3B3=melcepst(QS9s3eQS9_bandsB3,125,'M',12,14,1024,93);
QS9extFP3A3=melcepst(QS9s3eQS9_bandsA3,125,'M',12,14,1024,93);
QS9extFP3T3=melcepst(QS9s3eQS9_bandsT3,125,'M',12,14,1024,93);
QS9extFP3D3=melcepst(QS9s3eQS9_bandsD3,125,'M',12,14,1024,93);
			   
QS9extFP4G4=melcepst(QS9s4eQS9_bandsG4,125,'M',12,14,1024,93);
QS9extFP4B4=melcepst(QS9s4eQS9_bandsB4,125,'M',12,14,1024,93);
QS9extFP4A4=melcepst(QS9s4eQS9_bandsA4,125,'M',12,14,1024,93);
QS9extFP4T4=melcepst(QS9s4eQS9_bandsT4,125,'M',12,14,1024,93);
QS9extFP4D4=melcepst(QS9s4eQS9_bandsD4,125,'M',12,14,1024,93);
QS9extFP5G5=melcepst(QS9s5eQS9_bandsG5,125,'M',12,14,1024,93);
QS9extFP5B5=melcepst(QS9s5eQS9_bandsB5,125,'M',12,14,1024,93);
QS9extFP5A5=melcepst(QS9s5eQS9_bandsA5,125,'M',12,14,1024,93);
QS9extFP5T5=melcepst(QS9s5eQS9_bandsT5,125,'M',12,14,1024,93);
QS9extFP5D5=melcepst(QS9s5eQS9_bandsD5,125,'M',12,14,1024,93);
QS9extFP6G6=melcepst(QS9s6eQS9_bandsG6,125,'M',12,14,1024,93);
QS9extFP6B6=melcepst(QS9s6eQS9_bandsB6,125,'M',12,14,1024,93);
QS9extFP6A6=melcepst(QS9s6eQS9_bandsA6,125,'M',12,14,1024,93);
QS9extFP6T6=melcepst(QS9s6eQS9_bandsT6,125,'M',12,14,1024,93);
QS9extFP6D6=melcepst(QS9s6eQS9_bandsD6,125,'M',12,14,1024,93);
QS9extFP7G7=melcepst(QS9s7eQS9_bandsG7,125,'M',12,14,1024,93);
QS9extFP7B7=melcepst(QS9s7eQS9_bandsB7,125,'M',12,14,1024,93);
QS9extFP7A7=melcepst(QS9s7eQS9_bandsA7,125,'M',12,14,1024,93);
QS9extFP7T7=melcepst(QS9s7eQS9_bandsT7,125,'M',12,14,1024,93);
QS9extFP7D7=melcepst(QS9s7eQS9_bandsD7,125,'M',12,14,1024,93);
QS9extFP8G8=melcepst(QS9s8eQS9_bandsG8,125,'M',12,14,1024,93);
QS9extFP8B8=melcepst(QS9s8eQS9_bandsB8,125,'M',12,14,1024,93);
QS9extFP8A8=melcepst(QS9s8eQS9_bandsA8,125,'M',12,14,1024,93);
QS9extFP8T8=melcepst(QS9s8eQS9_bandsT8,125,'M',12,14,1024,93);
QS9extFP8D8=melcepst(QS9s8eQS9_bandsD8,125,'M',12,14,1024,93);
QS9extFP9G9=melcepst(QS9s9eQS9_bandsG9,125,'M',12,14,1024,93);
QS9extFP9B9=melcepst(QS9s9eQS9_bandsB9,125,'M',12,14,1024,93);
QS9extFP9A9=melcepst(QS9s9eQS9_bandsA9,125,'M',12,14,1024,93);
QS9extFP9T9=melcepst(QS9s9eQS9_bandsT9,125,'M',12,14,1024,93);
QS9extFP9D9=melcepst(QS9s9eQS9_bandsD9,125,'M',12,14,1024,93);
QS9extFP10G10=melcepst(QS9s10eQS9_bandsG10,125,'M',12,14,1024,93);
QS9extFP10B10=melcepst(QS9s10eQS9_bandsB10,125,'M',12,14,1024,93);
QS9extFP10A10=melcepst(QS9s10eQS9_bandsA10,125,'M',12,14,1024,93);
QS9extFP10T10=melcepst(QS9s10eQS9_bandsT10,125,'M',12,14,1024,93);
QS9extFP10D10=melcepst(QS9s10eQS9_bandsD10,125,'M',12,14,1024,93);
QS9extFP11G11=melcepst(QS9s11eQS9_bandsG11,125,'M',12,14,1024,93);
QS9extFP11B11=melcepst(QS9s11eQS9_bandsB11,125,'M',12,14,1024,93);
QS9extFP11A11=melcepst(QS9s11eQS9_bandsA11,125,'M',12,14,1024,93);
QS9extFP11T11=melcepst(QS9s11eQS9_bandsT11,125,'M',12,14,1024,93);
QS9extFP11D11=melcepst(QS9s11eQS9_bandsD11,125,'M',12,14,1024,93);
QS9extFP12G12=melcepst(QS9s12eQS9_bandsG12,125,'M',12,14,1024,93);
QS9extFP12B12=melcepst(QS9s12eQS9_bandsB12,125,'M',12,14,1024,93);
QS9extFP12A12=melcepst(QS9s12eQS9_bandsA12,125,'M',12,14,1024,93);
QS9extFP12T12=melcepst(QS9s12eQS9_bandsT12,125,'M',12,14,1024,93);
QS9extFP12D12=melcepst(QS9s12eQS9_bandsD12,125,'M',12,14,1024,93);
QS9extFP13G13=melcepst(QS9s13eQS9_bandsG13,125,'M',12,14,1024,93);
QS9extFP13B13=melcepst(QS9s13eQS9_bandsB13,125,'M',12,14,1024,93);
QS9extFP13A13=melcepst(QS9s13eQS9_bandsA13,125,'M',12,14,1024,93);
QS9extFP13T13=melcepst(QS9s13eQS9_bandsT13,125,'M',12,14,1024,93);
QS9extFP13D13=melcepst(QS9s13eQS9_bandsD13,125,'M',12,14,1024,93);
QS9extFP14G14=melcepst(QS9s14eQS9_bandsG14,125,'M',12,14,1024,93);
QS9extFP14B14=melcepst(QS9s14eQS9_bandsB14,125,'M',12,14,1024,93);
QS9extFP14A14=melcepst(QS9s14eQS9_bandsA14,125,'M',12,14,1024,93);
QS9extFP14T14=melcepst(QS9s14eQS9_bandsT14,125,'M',12,14,1024,93);
QS9extFP14D14=melcepst(QS9s14eQS9_bandsD14,125,'M',12,14,1024,93);
QS9extFP15G15=melcepst(QS9s15eQS9_bandsG15,125,'M',12,14,1024,93);
QS9extFP15B15=melcepst(QS9s15eQS9_bandsB15,125,'M',12,14,1024,93);
QS9extFP15A15=melcepst(QS9s15eQS9_bandsA15,125,'M',12,14,1024,93);
QS9extFP15T15=melcepst(QS9s15eQS9_bandsT15,125,'M',12,14,1024,93);
QS9extFP15D15=melcepst(QS9s15eQS9_bandsD15,125,'M',12,14,1024,93);
QS9extFP16G16=melcepst(QS9s16eQS9_bandsG16,125,'M',12,14,1024,93);
QS9extFP16B16=melcepst(QS9s16eQS9_bandsB16,125,'M',12,14,1024,93);
QS9extFP16A16=melcepst(QS9s16eQS9_bandsA16,125,'M',12,14,1024,93);
QS9extFP16T16=melcepst(QS9s16eQS9_bandsT16,125,'M',12,14,1024,93);
QS9extFP16D16=melcepst(QS9s16eQS9_bandsD16,125,'M',12,14,1024,93);
QS9extFP17G17=melcepst(QS9s17eQS9_bandsG17,125,'M',12,14,1024,93);
QS9extFP17B17=melcepst(QS9s17eQS9_bandsB17,125,'M',12,14,1024,93);
QS9extFP17A17=melcepst(QS9s17eQS9_bandsA17,125,'M',12,14,1024,93);
QS9extFP17T17=melcepst(QS9s17eQS9_bandsT17,125,'M',12,14,1024,93);
QS9extFP17D17=melcepst(QS9s17eQS9_bandsD17,125,'M',12,14,1024,93);
QS9extFP18G18=melcepst(QS9s18eQS9_bandsG18,125,'M',12,14,1024,93);
QS9extFP18B18=melcepst(QS9s18eQS9_bandsB18,125,'M',12,14,1024,93);
QS9extFP18A18=melcepst(QS9s18eQS9_bandsA18,125,'M',12,14,1024,93);
QS9extFP18T18=melcepst(QS9s18eQS9_bandsT18,125,'M',12,14,1024,93);
QS9extFP18D18=melcepst(QS9s18eQS9_bandsD18,125,'M',12,14,1024,93);
QS9extFP19G19=melcepst(QS9s19eQS9_bandsG19,125,'M',12,14,1024,93);
QS9extFP19B19=melcepst(QS9s19eQS9_bandsB19,125,'M',12,14,1024,93);
QS9extFP19A19=melcepst(QS9s19eQS9_bandsA19,125,'M',12,14,1024,93);
QS9extFP19T19=melcepst(QS9s19eQS9_bandsT19,125,'M',12,14,1024,93);
QS9extFP19D19=melcepst(QS9s19eQS9_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS9AALPHA = [QS9extFP1A1;QS9extFP2A2;QS9extFP3A3; QS9extFP4A4;QS9extFP5A5;QS9extFP6A6;QS9extFP7A7;QS9extFP8A8;QS9extFP9A9;QS9extFP10A10;QS9extFP11A11;QS9extFP12A12;QS9extFP13A13;QS9extFP14A14;QS9extFP15A15;QS9extFP16A16;QS9extFP17A17;QS9extFP18A18;QS9extFP19A19];


%%set expected output


QS9AALPHA(:,13)=0;
QS9AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS9AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS9AALPHA(:,1:12); 
tgtestS=QS9AALPHA(:,13:14);


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
