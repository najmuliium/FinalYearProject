%% Load the dataset 

QS1  = readtable("QS1.csv");

%Delete time table
QS1=QS1(:,2:20);
%% Question 1 data

QS1FP1 = table2array(QS1(:,1));
QS1FP2 = table2array(QS1(:,2));
QS1F3  = table2array(QS1(:,3));
QS1F4  = table2array(QS1(:,4));
QS1F7  = table2array(QS1(:,5));
QS1F8  = table2array(QS1(:,6));
QS1C3  = table2array(QS1(:,7));
QS1C4  = table2array(QS1(:,8));
QS1T7  = table2array(QS1(:,9));
QS1T8  = table2array(QS1(:,10));
QS1P3  = table2array(QS1(:,11));
QS1P4  = table2array(QS1(:,12));
QS1P7  = table2array(QS1(:,13));
QS1P8  = table2array(QS1(:,14));
QS1O1  = table2array(QS1(:,15));
QS1O2  = table2array(QS1(:,16));
QS1Fz  = table2array(QS1(:,17));
QS1Cz  = table2array(QS1(:,18));
QS1Pz  = table2array(QS1(:,19));

%% Splitband for QS1 

[QS1Gamma1,QS1Beta1,QS1Alpha1,QS1Theta1,QS1Delta1, QS1Sig0601] = splitband(QS1FP1);
[QS1Gamma2,QS1Beta2,QS1Alpha2,QS1Theta2,QS1Delta2, QS1Sig0602] = splitband(QS1FP2);
[QS1Gamma3,QS1Beta3,QS1Alpha3,QS1Theta3,QS1Delta3, QS1Sig0603] = splitband(QS1F3);
[QS1Gamma4,QS1Beta4,QS1Alpha4,QS1Theta4,QS1Delta4, QS1Sig0604] = splitband(QS1F4);
[QS1Gamma5,QS1Beta5,QS1Alpha5,QS1Theta5,QS1Delta5, QS1Sig0605] = splitband(QS1F7);
[QS1Gamma6,QS1Beta6,QS1Alpha6,QS1Theta6,QS1Delta6, QS1Sig0606] = splitband(QS1F8);
[QS1Gamma7,QS1Beta7,QS1Alpha7,QS1Theta7,QS1Delta7, QS1Sig0607] = splitband(QS1C3);
[QS1Gamma8,QS1Beta8,QS1Alpha8,QS1Theta8,QS1Delta8, QS1Sig0608] = splitband(QS1C4);
[QS1Gamma9,QS1Beta9,QS1Alpha9,QS1Theta9,QS1Delta9, QS1Sig0609] = splitband(QS1T7);
[QS1Gamma10,QS1Beta10,QS1Alpha10,QS1Theta10,QS1Delta10, QS1Sig06010] = splitband(QS1T8);
[QS1Gamma11,QS1Beta11,QS1Alpha11,QS1Theta11,QS1Delta11, QS1Sig06011] = splitband(QS1P3);
[QS1Gamma12,QS1Beta12,QS1Alpha12,QS1Theta12,QS1Delta12, QS1Sig06012] = splitband(QS1P4);
[QS1Gamma13,QS1Beta13,QS1Alpha13,QS1Theta13,QS1Delta13, QS1Sig06013] = splitband(QS1P7);
[QS1Gamma14,QS1Beta14,QS1Alpha14,QS1Theta14,QS1Delta14, QS1Sig06014] = splitband(QS1P8);
[QS1Gamma15,QS1Beta15,QS1Alpha15,QS1Theta15,QS1Delta15, QS1Sig06015] = splitband(QS1O1);
[QS1Gamma16,QS1Beta16,QS1Alpha16,QS1Theta16,QS1Delta16, QS1Sig06016] = splitband(QS1O2);
[QS1Gamma17,QS1Beta17,QS1Alpha17,QS1Theta17,QS1Delta17, QS1Sig06017] = splitband(QS1Fz);
[QS1Gamma18,QS1Beta18,QS1Alpha18,QS1Theta18,QS1Delta18, QS1Sig06018] = splitband(QS1Cz);
[QS1Gamma19,QS1Beta19,QS1Alpha19,QS1Theta19,QS1Delta19, QS1Sig06019] = splitband(QS1Pz);


%% feature extraQS1tion for QS1 

QS1s1eQS1_bandsG1 = QS1Gamma1;
QS1s1eQS1_bandsB1 = QS1Beta1;
QS1s1eQS1_bandsA1 = QS1Alpha1;
QS1s1eQS1_bandsT1 = QS1Theta1;
QS1s1eQS1_bandsD1 = QS1Delta1;
QS1s2eQS1_bandsG2 = QS1Gamma2;
QS1s2eQS1_bandsB2 = QS1Beta2;
QS1s2eQS1_bandsA2 = QS1Alpha2;
QS1s2eQS1_bandsT2 = QS1Theta2;
QS1s2eQS1_bandsD2 = QS1Delta2;
QS1s3eQS1_bandsG3 = QS1Gamma3;
QS1s3eQS1_bandsB3 = QS1Beta3;
QS1s3eQS1_bandsA3 = QS1Alpha3;
QS1s3eQS1_bandsT3 = QS1Theta3;
QS1s3eQS1_bandsD3 = QS1Delta3;
QS1s4eQS1_bandsG4 = QS1Gamma4;
QS1s4eQS1_bandsB4 = QS1Beta4;
QS1s4eQS1_bandsA4 = QS1Alpha4;
QS1s4eQS1_bandsT4 = QS1Theta4;
QS1s4eQS1_bandsD4 = QS1Delta4;
QS1s5eQS1_bandsG5 = QS1Gamma5;
QS1s5eQS1_bandsB5 = QS1Beta5;
QS1s5eQS1_bandsA5 = QS1Alpha5;
QS1s5eQS1_bandsT5 = QS1Theta5;
QS1s5eQS1_bandsD5 = QS1Delta5;
QS1s6eQS1_bandsG6 = QS1Gamma6;
QS1s6eQS1_bandsB6 = QS1Beta6;
QS1s6eQS1_bandsA6 = QS1Alpha6;
QS1s6eQS1_bandsT6 = QS1Theta6;
QS1s6eQS1_bandsD6 = QS1Delta6;
QS1s7eQS1_bandsG7 = QS1Gamma7;
QS1s7eQS1_bandsB7 = QS1Beta7;
QS1s7eQS1_bandsA7 = QS1Alpha7;
QS1s7eQS1_bandsT7 = QS1Theta7;
QS1s7eQS1_bandsD7 = QS1Delta7;
QS1s8eQS1_bandsG8 = QS1Gamma8;
QS1s8eQS1_bandsB8 = QS1Beta8;
QS1s8eQS1_bandsA8 = QS1Alpha8;
QS1s8eQS1_bandsT8 = QS1Theta8;
QS1s8eQS1_bandsD8 = QS1Delta8;
QS1s9eQS1_bandsG9 = QS1Gamma9;
QS1s9eQS1_bandsB9 = QS1Beta9;
QS1s9eQS1_bandsA9 = QS1Alpha9;
QS1s9eQS1_bandsT9 = QS1Theta9;
QS1s9eQS1_bandsD9 = QS1Delta9;
QS1s10eQS1_bandsG10 = QS1Gamma10;
QS1s10eQS1_bandsB10 = QS1Beta10;
QS1s10eQS1_bandsA10 = QS1Alpha10;
QS1s10eQS1_bandsT10 = QS1Theta10;
QS1s10eQS1_bandsD10 = QS1Delta10;
QS1s11eQS1_bandsG11 = QS1Gamma11;
QS1s11eQS1_bandsB11 = QS1Beta11;
QS1s11eQS1_bandsA11 = QS1Alpha11;
QS1s11eQS1_bandsT11 = QS1Theta11;
QS1s11eQS1_bandsD11 = QS1Delta11;
QS1s12eQS1_bandsG12 = QS1Gamma12;
QS1s12eQS1_bandsB12 = QS1Beta12;
QS1s12eQS1_bandsA12 = QS1Alpha12;
QS1s12eQS1_bandsT12= QS1Theta12;
QS1s12eQS1_bandsD12 = QS1Delta12;
QS1s13eQS1_bandsG13 = QS1Gamma13;
QS1s13eQS1_bandsB13 = QS1Beta13;
QS1s13eQS1_bandsA13 = QS1Alpha13;
QS1s13eQS1_bandsT13 = QS1Theta13;
QS1s13eQS1_bandsD13 = QS1Delta13;
QS1s14eQS1_bandsG14 = QS1Gamma14;
QS1s14eQS1_bandsB14 = QS1Beta14;
QS1s14eQS1_bandsA14 = QS1Alpha14;
QS1s14eQS1_bandsT14 = QS1Theta14;
QS1s14eQS1_bandsD14 = QS1Delta14;
QS1s15eQS1_bandsG15 = QS1Gamma15;
QS1s15eQS1_bandsB15 = QS1Beta15;
QS1s15eQS1_bandsA15 = QS1Alpha15;
QS1s15eQS1_bandsT15 = QS1Theta15;
QS1s15eQS1_bandsD15 = QS1Delta15;
QS1s16eQS1_bandsG16 = QS1Gamma16;
QS1s16eQS1_bandsB16 = QS1Beta16;
QS1s16eQS1_bandsA16 = QS1Alpha16;
QS1s16eQS1_bandsT16 = QS1Theta16;
QS1s16eQS1_bandsD16 = QS1Delta16;
QS1s17eQS1_bandsG17 = QS1Gamma17;
QS1s17eQS1_bandsB17 = QS1Beta17;
QS1s17eQS1_bandsA17 = QS1Alpha17;
QS1s17eQS1_bandsT17 = QS1Theta17;
QS1s17eQS1_bandsD17 = QS1Delta17;
QS1s18eQS1_bandsG18 = QS1Gamma18;
QS1s18eQS1_bandsB18 = QS1Beta18;
QS1s18eQS1_bandsA18 = QS1Alpha18;
QS1s18eQS1_bandsT18 = QS1Theta18;
QS1s18eQS1_bandsD18 = QS1Delta18;
QS1s19eQS1_bandsG19 = QS1Gamma19;
QS1s19eQS1_bandsB19 = QS1Beta19;
QS1s19eQS1_bandsA19 = QS1Alpha19;
QS1s19eQS1_bandsT19 = QS1Theta19;
QS1s19eQS1_bandsD19 = QS1Delta19;
QS1extFP1G1=melcepst(QS1s1eQS1_bandsG1,125,'M',12,14,1024,93);
QS1extFP1B1=melcepst(QS1s1eQS1_bandsB1,125,'M',12,14,1024,93);
QS1extFP1A1=melcepst(QS1s1eQS1_bandsA1,125,'M',12,14,1024,93);
QS1extFP1T1=melcepst(QS1s1eQS1_bandsT1,125,'M',12,14,1024,93);
QS1extFP1D1=melcepst(QS1s1eQS1_bandsD1,125,'M',12,14,1024,93);
			 
QS1extFP2G2=melcepst(QS1s2eQS1_bandsG2,125,'M',12,14,1024,93);
QS1extFP2B2=melcepst(QS1s2eQS1_bandsB2,125,'M',12,14,1024,93);
QS1extFP2A2=melcepst(QS1s2eQS1_bandsA2,125,'M',12,14,1024,93);
QS1extFP2T2=melcepst(QS1s2eQS1_bandsT2,125,'M',12,14,1024,93);
QS1extFP2D2=melcepst(QS1s2eQS1_bandsD2,125,'M',12,14,1024,93);
			   
QS1extFP3G3=melcepst(QS1s3eQS1_bandsG3,125,'M',12,14,1024,93);
QS1extFP3B3=melcepst(QS1s3eQS1_bandsB3,125,'M',12,14,1024,93);
QS1extFP3A3=melcepst(QS1s3eQS1_bandsA3,125,'M',12,14,1024,93);
QS1extFP3T3=melcepst(QS1s3eQS1_bandsT3,125,'M',12,14,1024,93);
QS1extFP3D3=melcepst(QS1s3eQS1_bandsD3,125,'M',12,14,1024,93);
			   
QS1extFP4G4=melcepst(QS1s4eQS1_bandsG4,125,'M',12,14,1024,93);
QS1extFP4B4=melcepst(QS1s4eQS1_bandsB4,125,'M',12,14,1024,93);
QS1extFP4A4=melcepst(QS1s4eQS1_bandsA4,125,'M',12,14,1024,93);
QS1extFP4T4=melcepst(QS1s4eQS1_bandsT4,125,'M',12,14,1024,93);
QS1extFP4D4=melcepst(QS1s4eQS1_bandsD4,125,'M',12,14,1024,93);
QS1extFP5G5=melcepst(QS1s5eQS1_bandsG5,125,'M',12,14,1024,93);
QS1extFP5B5=melcepst(QS1s5eQS1_bandsB5,125,'M',12,14,1024,93);
QS1extFP5A5=melcepst(QS1s5eQS1_bandsA5,125,'M',12,14,1024,93);
QS1extFP5T5=melcepst(QS1s5eQS1_bandsT5,125,'M',12,14,1024,93);
QS1extFP5D5=melcepst(QS1s5eQS1_bandsD5,125,'M',12,14,1024,93);
QS1extFP6G6=melcepst(QS1s6eQS1_bandsG6,125,'M',12,14,1024,93);
QS1extFP6B6=melcepst(QS1s6eQS1_bandsB6,125,'M',12,14,1024,93);
QS1extFP6A6=melcepst(QS1s6eQS1_bandsA6,125,'M',12,14,1024,93);
QS1extFP6T6=melcepst(QS1s6eQS1_bandsT6,125,'M',12,14,1024,93);
QS1extFP6D6=melcepst(QS1s6eQS1_bandsD6,125,'M',12,14,1024,93);
QS1extFP7G7=melcepst(QS1s7eQS1_bandsG7,125,'M',12,14,1024,93);
QS1extFP7B7=melcepst(QS1s7eQS1_bandsB7,125,'M',12,14,1024,93);
QS1extFP7A7=melcepst(QS1s7eQS1_bandsA7,125,'M',12,14,1024,93);
QS1extFP7T7=melcepst(QS1s7eQS1_bandsT7,125,'M',12,14,1024,93);
QS1extFP7D7=melcepst(QS1s7eQS1_bandsD7,125,'M',12,14,1024,93);
QS1extFP8G8=melcepst(QS1s8eQS1_bandsG8,125,'M',12,14,1024,93);
QS1extFP8B8=melcepst(QS1s8eQS1_bandsB8,125,'M',12,14,1024,93);
QS1extFP8A8=melcepst(QS1s8eQS1_bandsA8,125,'M',12,14,1024,93);
QS1extFP8T8=melcepst(QS1s8eQS1_bandsT8,125,'M',12,14,1024,93);
QS1extFP8D8=melcepst(QS1s8eQS1_bandsD8,125,'M',12,14,1024,93);
QS1extFP9G9=melcepst(QS1s9eQS1_bandsG9,125,'M',12,14,1024,93);
QS1extFP9B9=melcepst(QS1s9eQS1_bandsB9,125,'M',12,14,1024,93);
QS1extFP9A9=melcepst(QS1s9eQS1_bandsA9,125,'M',12,14,1024,93);
QS1extFP9T9=melcepst(QS1s9eQS1_bandsT9,125,'M',12,14,1024,93);
QS1extFP9D9=melcepst(QS1s9eQS1_bandsD9,125,'M',12,14,1024,93);
QS1extFP10G10=melcepst(QS1s10eQS1_bandsG10,125,'M',12,14,1024,93);
QS1extFP10B10=melcepst(QS1s10eQS1_bandsB10,125,'M',12,14,1024,93);
QS1extFP10A10=melcepst(QS1s10eQS1_bandsA10,125,'M',12,14,1024,93);
QS1extFP10T10=melcepst(QS1s10eQS1_bandsT10,125,'M',12,14,1024,93);
QS1extFP10D10=melcepst(QS1s10eQS1_bandsD10,125,'M',12,14,1024,93);
QS1extFP11G11=melcepst(QS1s11eQS1_bandsG11,125,'M',12,14,1024,93);
QS1extFP11B11=melcepst(QS1s11eQS1_bandsB11,125,'M',12,14,1024,93);
QS1extFP11A11=melcepst(QS1s11eQS1_bandsA11,125,'M',12,14,1024,93);
QS1extFP11T11=melcepst(QS1s11eQS1_bandsT11,125,'M',12,14,1024,93);
QS1extFP11D11=melcepst(QS1s11eQS1_bandsD11,125,'M',12,14,1024,93);
QS1extFP12G12=melcepst(QS1s12eQS1_bandsG12,125,'M',12,14,1024,93);
QS1extFP12B12=melcepst(QS1s12eQS1_bandsB12,125,'M',12,14,1024,93);
QS1extFP12A12=melcepst(QS1s12eQS1_bandsA12,125,'M',12,14,1024,93);
QS1extFP12T12=melcepst(QS1s12eQS1_bandsT12,125,'M',12,14,1024,93);
QS1extFP12D12=melcepst(QS1s12eQS1_bandsD12,125,'M',12,14,1024,93);
QS1extFP13G13=melcepst(QS1s13eQS1_bandsG13,125,'M',12,14,1024,93);
QS1extFP13B13=melcepst(QS1s13eQS1_bandsB13,125,'M',12,14,1024,93);
QS1extFP13A13=melcepst(QS1s13eQS1_bandsA13,125,'M',12,14,1024,93);
QS1extFP13T13=melcepst(QS1s13eQS1_bandsT13,125,'M',12,14,1024,93);
QS1extFP13D13=melcepst(QS1s13eQS1_bandsD13,125,'M',12,14,1024,93);
QS1extFP14G14=melcepst(QS1s14eQS1_bandsG14,125,'M',12,14,1024,93);
QS1extFP14B14=melcepst(QS1s14eQS1_bandsB14,125,'M',12,14,1024,93);
QS1extFP14A14=melcepst(QS1s14eQS1_bandsA14,125,'M',12,14,1024,93);
QS1extFP14T14=melcepst(QS1s14eQS1_bandsT14,125,'M',12,14,1024,93);
QS1extFP14D14=melcepst(QS1s14eQS1_bandsD14,125,'M',12,14,1024,93);
QS1extFP15G15=melcepst(QS1s15eQS1_bandsG15,125,'M',12,14,1024,93);
QS1extFP15B15=melcepst(QS1s15eQS1_bandsB15,125,'M',12,14,1024,93);
QS1extFP15A15=melcepst(QS1s15eQS1_bandsA15,125,'M',12,14,1024,93);
QS1extFP15T15=melcepst(QS1s15eQS1_bandsT15,125,'M',12,14,1024,93);
QS1extFP15D15=melcepst(QS1s15eQS1_bandsD15,125,'M',12,14,1024,93);
QS1extFP16G16=melcepst(QS1s16eQS1_bandsG16,125,'M',12,14,1024,93);
QS1extFP16B16=melcepst(QS1s16eQS1_bandsB16,125,'M',12,14,1024,93);
QS1extFP16A16=melcepst(QS1s16eQS1_bandsA16,125,'M',12,14,1024,93);
QS1extFP16T16=melcepst(QS1s16eQS1_bandsT16,125,'M',12,14,1024,93);
QS1extFP16D16=melcepst(QS1s16eQS1_bandsD16,125,'M',12,14,1024,93);
QS1extFP17G17=melcepst(QS1s17eQS1_bandsG17,125,'M',12,14,1024,93);
QS1extFP17B17=melcepst(QS1s17eQS1_bandsB17,125,'M',12,14,1024,93);
QS1extFP17A17=melcepst(QS1s17eQS1_bandsA17,125,'M',12,14,1024,93);
QS1extFP17T17=melcepst(QS1s17eQS1_bandsT17,125,'M',12,14,1024,93);
QS1extFP17D17=melcepst(QS1s17eQS1_bandsD17,125,'M',12,14,1024,93);
QS1extFP18G18=melcepst(QS1s18eQS1_bandsG18,125,'M',12,14,1024,93);
QS1extFP18B18=melcepst(QS1s18eQS1_bandsB18,125,'M',12,14,1024,93);
QS1extFP18A18=melcepst(QS1s18eQS1_bandsA18,125,'M',12,14,1024,93);
QS1extFP18T18=melcepst(QS1s18eQS1_bandsT18,125,'M',12,14,1024,93);
QS1extFP18D18=melcepst(QS1s18eQS1_bandsD18,125,'M',12,14,1024,93);
QS1extFP19G19=melcepst(QS1s19eQS1_bandsG19,125,'M',12,14,1024,93);
QS1extFP19B19=melcepst(QS1s19eQS1_bandsB19,125,'M',12,14,1024,93);
QS1extFP19A19=melcepst(QS1s19eQS1_bandsA19,125,'M',12,14,1024,93);
QS1extFP19T19=melcepst(QS1s19eQS1_bandsT19,125,'M',12,14,1024,93);
QS1extFP19D19=melcepst(QS1s19eQS1_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS1AALPHA = [QS1extFP1A1;QS1extFP2A2;QS1extFP3A3; QS1extFP4A4;QS1extFP5A5;QS1extFP6A6;QS1extFP7A7;QS1extFP8A8;QS1extFP9A9;QS1extFP10A10;QS1extFP11A11;QS1extFP12A12;QS1extFP13A13;QS1extFP14A14;QS1extFP15A15;QS1extFP16A16;QS1extFP17A17;QS1extFP18A18;QS1extFP19A19];


%%set expected output


QS1AALPHA(:,13)=0;
QS1AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS1AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS1AALPHA(:,1:12); 
tgtestS=QS1AALPHA(:,13:14);


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
