%% Load the dataset 

QS2  = readtable("QS2.csv");

%Delete time table
QS2=QS2(:,2:20);
%% Question 1 data

QS2FP1 = table2array(QS2(:,1));
QS2FP2 = table2array(QS2(:,2));
QS2F3  = table2array(QS2(:,3));
QS2F4  = table2array(QS2(:,4));
QS2F7  = table2array(QS2(:,5));
QS2F8  = table2array(QS2(:,6));
QS2C3  = table2array(QS2(:,7));
QS2C4  = table2array(QS2(:,8));
QS2T7  = table2array(QS2(:,9));
QS2T8  = table2array(QS2(:,10));
QS2P3  = table2array(QS2(:,11));
QS2P4  = table2array(QS2(:,12));
QS2P7  = table2array(QS2(:,13));
QS2P8  = table2array(QS2(:,14));
QS2O1  = table2array(QS2(:,15));
QS2O2  = table2array(QS2(:,16));
QS2Fz  = table2array(QS2(:,17));
QS2Cz  = table2array(QS2(:,18));
QS2Pz  = table2array(QS2(:,19));

%% Splitband for QS2 

[QS2Gamma1,QS2Beta1,QS2Alpha1,QS2Theta1,QS2Delta1, QS2Sig0601] = splitband(QS2FP1);
[QS2Gamma2,QS2Beta2,QS2Alpha2,QS2Theta2,QS2Delta2, QS2Sig0602] = splitband(QS2FP2);
[QS2Gamma3,QS2Beta3,QS2Alpha3,QS2Theta3,QS2Delta3, QS2Sig0603] = splitband(QS2F3);
[QS2Gamma4,QS2Beta4,QS2Alpha4,QS2Theta4,QS2Delta4, QS2Sig0604] = splitband(QS2F4);
[QS2Gamma5,QS2Beta5,QS2Alpha5,QS2Theta5,QS2Delta5, QS2Sig0605] = splitband(QS2F7);
[QS2Gamma6,QS2Beta6,QS2Alpha6,QS2Theta6,QS2Delta6, QS2Sig0606] = splitband(QS2F8);
[QS2Gamma7,QS2Beta7,QS2Alpha7,QS2Theta7,QS2Delta7, QS2Sig0607] = splitband(QS2C3);
[QS2Gamma8,QS2Beta8,QS2Alpha8,QS2Theta8,QS2Delta8, QS2Sig0608] = splitband(QS2C4);
[QS2Gamma9,QS2Beta9,QS2Alpha9,QS2Theta9,QS2Delta9, QS2Sig0609] = splitband(QS2T7);
[QS2Gamma10,QS2Beta10,QS2Alpha10,QS2Theta10,QS2Delta10, QS2Sig06010] = splitband(QS2T8);
[QS2Gamma11,QS2Beta11,QS2Alpha11,QS2Theta11,QS2Delta11, QS2Sig06011] = splitband(QS2P3);
[QS2Gamma12,QS2Beta12,QS2Alpha12,QS2Theta12,QS2Delta12, QS2Sig06012] = splitband(QS2P4);
[QS2Gamma13,QS2Beta13,QS2Alpha13,QS2Theta13,QS2Delta13, QS2Sig06013] = splitband(QS2P7);
[QS2Gamma14,QS2Beta14,QS2Alpha14,QS2Theta14,QS2Delta14, QS2Sig06014] = splitband(QS2P8);
[QS2Gamma15,QS2Beta15,QS2Alpha15,QS2Theta15,QS2Delta15, QS2Sig06015] = splitband(QS2O1);
[QS2Gamma16,QS2Beta16,QS2Alpha16,QS2Theta16,QS2Delta16, QS2Sig06016] = splitband(QS2O2);
[QS2Gamma17,QS2Beta17,QS2Alpha17,QS2Theta17,QS2Delta17, QS2Sig06017] = splitband(QS2Fz);
[QS2Gamma18,QS2Beta18,QS2Alpha18,QS2Theta18,QS2Delta18, QS2Sig06018] = splitband(QS2Cz);
[QS2Gamma19,QS2Beta19,QS2Alpha19,QS2Theta19,QS2Delta19, QS2Sig06019] = splitband(QS2Pz);


%% feature extraQS2tion for QS2 

QS2s1eQS2_bandsG1 = QS2Gamma1;
QS2s1eQS2_bandsB1 = QS2Beta1;
QS2s1eQS2_bandsA1 = QS2Alpha1;
QS2s1eQS2_bandsT1 = QS2Theta1;
QS2s1eQS2_bandsD1 = QS2Delta1;
QS2s2eQS2_bandsG2 = QS2Gamma2;
QS2s2eQS2_bandsB2 = QS2Beta2;
QS2s2eQS2_bandsA2 = QS2Alpha2;
QS2s2eQS2_bandsT2 = QS2Theta2;
QS2s2eQS2_bandsD2 = QS2Delta2;
QS2s3eQS2_bandsG3 = QS2Gamma3;
QS2s3eQS2_bandsB3 = QS2Beta3;
QS2s3eQS2_bandsA3 = QS2Alpha3;
QS2s3eQS2_bandsT3 = QS2Theta3;
QS2s3eQS2_bandsD3 = QS2Delta3;
QS2s4eQS2_bandsG4 = QS2Gamma4;
QS2s4eQS2_bandsB4 = QS2Beta4;
QS2s4eQS2_bandsA4 = QS2Alpha4;
QS2s4eQS2_bandsT4 = QS2Theta4;
QS2s4eQS2_bandsD4 = QS2Delta4;
QS2s5eQS2_bandsG5 = QS2Gamma5;
QS2s5eQS2_bandsB5 = QS2Beta5;
QS2s5eQS2_bandsA5 = QS2Alpha5;
QS2s5eQS2_bandsT5 = QS2Theta5;
QS2s5eQS2_bandsD5 = QS2Delta5;
QS2s6eQS2_bandsG6 = QS2Gamma6;
QS2s6eQS2_bandsB6 = QS2Beta6;
QS2s6eQS2_bandsA6 = QS2Alpha6;
QS2s6eQS2_bandsT6 = QS2Theta6;
QS2s6eQS2_bandsD6 = QS2Delta6;
QS2s7eQS2_bandsG7 = QS2Gamma7;
QS2s7eQS2_bandsB7 = QS2Beta7;
QS2s7eQS2_bandsA7 = QS2Alpha7;
QS2s7eQS2_bandsT7 = QS2Theta7;
QS2s7eQS2_bandsD7 = QS2Delta7;
QS2s8eQS2_bandsG8 = QS2Gamma8;
QS2s8eQS2_bandsB8 = QS2Beta8;
QS2s8eQS2_bandsA8 = QS2Alpha8;
QS2s8eQS2_bandsT8 = QS2Theta8;
QS2s8eQS2_bandsD8 = QS2Delta8;
QS2s9eQS2_bandsG9 = QS2Gamma9;
QS2s9eQS2_bandsB9 = QS2Beta9;
QS2s9eQS2_bandsA9 = QS2Alpha9;
QS2s9eQS2_bandsT9 = QS2Theta9;
QS2s9eQS2_bandsD9 = QS2Delta9;
QS2s10eQS2_bandsG10 = QS2Gamma10;
QS2s10eQS2_bandsB10 = QS2Beta10;
QS2s10eQS2_bandsA10 = QS2Alpha10;
QS2s10eQS2_bandsT10 = QS2Theta10;
QS2s10eQS2_bandsD10 = QS2Delta10;
QS2s11eQS2_bandsG11 = QS2Gamma11;
QS2s11eQS2_bandsB11 = QS2Beta11;
QS2s11eQS2_bandsA11 = QS2Alpha11;
QS2s11eQS2_bandsT11 = QS2Theta11;
QS2s11eQS2_bandsD11 = QS2Delta11;
QS2s12eQS2_bandsG12 = QS2Gamma12;
QS2s12eQS2_bandsB12 = QS2Beta12;
QS2s12eQS2_bandsA12 = QS2Alpha12;
QS2s12eQS2_bandsT12= QS2Theta12;
QS2s12eQS2_bandsD12 = QS2Delta12;
QS2s13eQS2_bandsG13 = QS2Gamma13;
QS2s13eQS2_bandsB13 = QS2Beta13;
QS2s13eQS2_bandsA13 = QS2Alpha13;
QS2s13eQS2_bandsT13 = QS2Theta13;
QS2s13eQS2_bandsD13 = QS2Delta13;
QS2s14eQS2_bandsG14 = QS2Gamma14;
QS2s14eQS2_bandsB14 = QS2Beta14;
QS2s14eQS2_bandsA14 = QS2Alpha14;
QS2s14eQS2_bandsT14 = QS2Theta14;
QS2s14eQS2_bandsD14 = QS2Delta14;
QS2s15eQS2_bandsG15 = QS2Gamma15;
QS2s15eQS2_bandsB15 = QS2Beta15;
QS2s15eQS2_bandsA15 = QS2Alpha15;
QS2s15eQS2_bandsT15 = QS2Theta15;
QS2s15eQS2_bandsD15 = QS2Delta15;
QS2s16eQS2_bandsG16 = QS2Gamma16;
QS2s16eQS2_bandsB16 = QS2Beta16;
QS2s16eQS2_bandsA16 = QS2Alpha16;
QS2s16eQS2_bandsT16 = QS2Theta16;
QS2s16eQS2_bandsD16 = QS2Delta16;
QS2s17eQS2_bandsG17 = QS2Gamma17;
QS2s17eQS2_bandsB17 = QS2Beta17;
QS2s17eQS2_bandsA17 = QS2Alpha17;
QS2s17eQS2_bandsT17 = QS2Theta17;
QS2s17eQS2_bandsD17 = QS2Delta17;
QS2s18eQS2_bandsG18 = QS2Gamma18;
QS2s18eQS2_bandsB18 = QS2Beta18;
QS2s18eQS2_bandsA18 = QS2Alpha18;
QS2s18eQS2_bandsT18 = QS2Theta18;
QS2s18eQS2_bandsD18 = QS2Delta18;
QS2s19eQS2_bandsG19 = QS2Gamma19;
QS2s19eQS2_bandsB19 = QS2Beta19;
QS2s19eQS2_bandsA19 = QS2Alpha19;
QS2s19eQS2_bandsT19 = QS2Theta19;
QS2s19eQS2_bandsD19 = QS2Delta19;
QS2extFP1G1=melcepst(QS2s1eQS2_bandsG1,125,'M',12,14,1024,93);
QS2extFP1B1=melcepst(QS2s1eQS2_bandsB1,125,'M',12,14,1024,93);
QS2extFP1A1=melcepst(QS2s1eQS2_bandsA1,125,'M',12,14,1024,93);
QS2extFP1T1=melcepst(QS2s1eQS2_bandsT1,125,'M',12,14,1024,93);
QS2extFP1D1=melcepst(QS2s1eQS2_bandsD1,125,'M',12,14,1024,93);
			 
QS2extFP2G2=melcepst(QS2s2eQS2_bandsG2,125,'M',12,14,1024,93);
QS2extFP2B2=melcepst(QS2s2eQS2_bandsB2,125,'M',12,14,1024,93);
QS2extFP2A2=melcepst(QS2s2eQS2_bandsA2,125,'M',12,14,1024,93);
QS2extFP2T2=melcepst(QS2s2eQS2_bandsT2,125,'M',12,14,1024,93);
QS2extFP2D2=melcepst(QS2s2eQS2_bandsD2,125,'M',12,14,1024,93);
			   
QS2extFP3G3=melcepst(QS2s3eQS2_bandsG3,125,'M',12,14,1024,93);
QS2extFP3B3=melcepst(QS2s3eQS2_bandsB3,125,'M',12,14,1024,93);
QS2extFP3A3=melcepst(QS2s3eQS2_bandsA3,125,'M',12,14,1024,93);
QS2extFP3T3=melcepst(QS2s3eQS2_bandsT3,125,'M',12,14,1024,93);
QS2extFP3D3=melcepst(QS2s3eQS2_bandsD3,125,'M',12,14,1024,93);
			   
QS2extFP4G4=melcepst(QS2s4eQS2_bandsG4,125,'M',12,14,1024,93);
QS2extFP4B4=melcepst(QS2s4eQS2_bandsB4,125,'M',12,14,1024,93);
QS2extFP4A4=melcepst(QS2s4eQS2_bandsA4,125,'M',12,14,1024,93);
QS2extFP4T4=melcepst(QS2s4eQS2_bandsT4,125,'M',12,14,1024,93);
QS2extFP4D4=melcepst(QS2s4eQS2_bandsD4,125,'M',12,14,1024,93);
QS2extFP5G5=melcepst(QS2s5eQS2_bandsG5,125,'M',12,14,1024,93);
QS2extFP5B5=melcepst(QS2s5eQS2_bandsB5,125,'M',12,14,1024,93);
QS2extFP5A5=melcepst(QS2s5eQS2_bandsA5,125,'M',12,14,1024,93);
QS2extFP5T5=melcepst(QS2s5eQS2_bandsT5,125,'M',12,14,1024,93);
QS2extFP5D5=melcepst(QS2s5eQS2_bandsD5,125,'M',12,14,1024,93);
QS2extFP6G6=melcepst(QS2s6eQS2_bandsG6,125,'M',12,14,1024,93);
QS2extFP6B6=melcepst(QS2s6eQS2_bandsB6,125,'M',12,14,1024,93);
QS2extFP6A6=melcepst(QS2s6eQS2_bandsA6,125,'M',12,14,1024,93);
QS2extFP6T6=melcepst(QS2s6eQS2_bandsT6,125,'M',12,14,1024,93);
QS2extFP6D6=melcepst(QS2s6eQS2_bandsD6,125,'M',12,14,1024,93);
QS2extFP7G7=melcepst(QS2s7eQS2_bandsG7,125,'M',12,14,1024,93);
QS2extFP7B7=melcepst(QS2s7eQS2_bandsB7,125,'M',12,14,1024,93);
QS2extFP7A7=melcepst(QS2s7eQS2_bandsA7,125,'M',12,14,1024,93);
QS2extFP7T7=melcepst(QS2s7eQS2_bandsT7,125,'M',12,14,1024,93);
QS2extFP7D7=melcepst(QS2s7eQS2_bandsD7,125,'M',12,14,1024,93);
QS2extFP8G8=melcepst(QS2s8eQS2_bandsG8,125,'M',12,14,1024,93);
QS2extFP8B8=melcepst(QS2s8eQS2_bandsB8,125,'M',12,14,1024,93);
QS2extFP8A8=melcepst(QS2s8eQS2_bandsA8,125,'M',12,14,1024,93);
QS2extFP8T8=melcepst(QS2s8eQS2_bandsT8,125,'M',12,14,1024,93);
QS2extFP8D8=melcepst(QS2s8eQS2_bandsD8,125,'M',12,14,1024,93);
QS2extFP9G9=melcepst(QS2s9eQS2_bandsG9,125,'M',12,14,1024,93);
QS2extFP9B9=melcepst(QS2s9eQS2_bandsB9,125,'M',12,14,1024,93);
QS2extFP9A9=melcepst(QS2s9eQS2_bandsA9,125,'M',12,14,1024,93);
QS2extFP9T9=melcepst(QS2s9eQS2_bandsT9,125,'M',12,14,1024,93);
QS2extFP9D9=melcepst(QS2s9eQS2_bandsD9,125,'M',12,14,1024,93);
QS2extFP10G10=melcepst(QS2s10eQS2_bandsG10,125,'M',12,14,1024,93);
QS2extFP10B10=melcepst(QS2s10eQS2_bandsB10,125,'M',12,14,1024,93);
QS2extFP10A10=melcepst(QS2s10eQS2_bandsA10,125,'M',12,14,1024,93);
QS2extFP10T10=melcepst(QS2s10eQS2_bandsT10,125,'M',12,14,1024,93);
QS2extFP10D10=melcepst(QS2s10eQS2_bandsD10,125,'M',12,14,1024,93);
QS2extFP11G11=melcepst(QS2s11eQS2_bandsG11,125,'M',12,14,1024,93);
QS2extFP11B11=melcepst(QS2s11eQS2_bandsB11,125,'M',12,14,1024,93);
QS2extFP11A11=melcepst(QS2s11eQS2_bandsA11,125,'M',12,14,1024,93);
QS2extFP11T11=melcepst(QS2s11eQS2_bandsT11,125,'M',12,14,1024,93);
QS2extFP11D11=melcepst(QS2s11eQS2_bandsD11,125,'M',12,14,1024,93);
QS2extFP12G12=melcepst(QS2s12eQS2_bandsG12,125,'M',12,14,1024,93);
QS2extFP12B12=melcepst(QS2s12eQS2_bandsB12,125,'M',12,14,1024,93);
QS2extFP12A12=melcepst(QS2s12eQS2_bandsA12,125,'M',12,14,1024,93);
QS2extFP12T12=melcepst(QS2s12eQS2_bandsT12,125,'M',12,14,1024,93);
QS2extFP12D12=melcepst(QS2s12eQS2_bandsD12,125,'M',12,14,1024,93);
QS2extFP13G13=melcepst(QS2s13eQS2_bandsG13,125,'M',12,14,1024,93);
QS2extFP13B13=melcepst(QS2s13eQS2_bandsB13,125,'M',12,14,1024,93);
QS2extFP13A13=melcepst(QS2s13eQS2_bandsA13,125,'M',12,14,1024,93);
QS2extFP13T13=melcepst(QS2s13eQS2_bandsT13,125,'M',12,14,1024,93);
QS2extFP13D13=melcepst(QS2s13eQS2_bandsD13,125,'M',12,14,1024,93);
QS2extFP14G14=melcepst(QS2s14eQS2_bandsG14,125,'M',12,14,1024,93);
QS2extFP14B14=melcepst(QS2s14eQS2_bandsB14,125,'M',12,14,1024,93);
QS2extFP14A14=melcepst(QS2s14eQS2_bandsA14,125,'M',12,14,1024,93);
QS2extFP14T14=melcepst(QS2s14eQS2_bandsT14,125,'M',12,14,1024,93);
QS2extFP14D14=melcepst(QS2s14eQS2_bandsD14,125,'M',12,14,1024,93);
QS2extFP15G15=melcepst(QS2s15eQS2_bandsG15,125,'M',12,14,1024,93);
QS2extFP15B15=melcepst(QS2s15eQS2_bandsB15,125,'M',12,14,1024,93);
QS2extFP15A15=melcepst(QS2s15eQS2_bandsA15,125,'M',12,14,1024,93);
QS2extFP15T15=melcepst(QS2s15eQS2_bandsT15,125,'M',12,14,1024,93);
QS2extFP15D15=melcepst(QS2s15eQS2_bandsD15,125,'M',12,14,1024,93);
QS2extFP16G16=melcepst(QS2s16eQS2_bandsG16,125,'M',12,14,1024,93);
QS2extFP16B16=melcepst(QS2s16eQS2_bandsB16,125,'M',12,14,1024,93);
QS2extFP16A16=melcepst(QS2s16eQS2_bandsA16,125,'M',12,14,1024,93);
QS2extFP16T16=melcepst(QS2s16eQS2_bandsT16,125,'M',12,14,1024,93);
QS2extFP16D16=melcepst(QS2s16eQS2_bandsD16,125,'M',12,14,1024,93);
QS2extFP17G17=melcepst(QS2s17eQS2_bandsG17,125,'M',12,14,1024,93);
QS2extFP17B17=melcepst(QS2s17eQS2_bandsB17,125,'M',12,14,1024,93);
QS2extFP17A17=melcepst(QS2s17eQS2_bandsA17,125,'M',12,14,1024,93);
QS2extFP17T17=melcepst(QS2s17eQS2_bandsT17,125,'M',12,14,1024,93);
QS2extFP17D17=melcepst(QS2s17eQS2_bandsD17,125,'M',12,14,1024,93);
QS2extFP18G18=melcepst(QS2s18eQS2_bandsG18,125,'M',12,14,1024,93);
QS2extFP18B18=melcepst(QS2s18eQS2_bandsB18,125,'M',12,14,1024,93);
QS2extFP18A18=melcepst(QS2s18eQS2_bandsA18,125,'M',12,14,1024,93);
QS2extFP18T18=melcepst(QS2s18eQS2_bandsT18,125,'M',12,14,1024,93);
QS2extFP18D18=melcepst(QS2s18eQS2_bandsD18,125,'M',12,14,1024,93);
QS2extFP19G19=melcepst(QS2s19eQS2_bandsG19,125,'M',12,14,1024,93);
QS2extFP19B19=melcepst(QS2s19eQS2_bandsB19,125,'M',12,14,1024,93);
QS2extFP19A19=melcepst(QS2s19eQS2_bandsA19,125,'M',12,14,1024,93);
QS2extFP19T19=melcepst(QS2s19eQS2_bandsT19,125,'M',12,14,1024,93);
QS2extFP19D19=melcepst(QS2s19eQS2_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS2AALPHA = [QS2extFP1A1;QS2extFP2A2;QS2extFP3A3; QS2extFP4A4;QS2extFP5A5;QS2extFP6A6;QS2extFP7A7;QS2extFP8A8;QS2extFP9A9;QS2extFP10A10;QS2extFP11A11;QS2extFP12A12;QS2extFP13A13;QS2extFP14A14;QS2extFP15A15;QS2extFP16A16;QS2extFP17A17;QS2extFP18A18;QS2extFP19A19];


%%set expected output


QS2AALPHA(:,13)=0;
QS2AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS2AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS2AALPHA(:,1:12); 
tgtestS=QS2AALPHA(:,13:14);


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
