%% Load the dataset 

QS7  = readtable("QS7.csv");

%Delete time table
QS7=QS7(:,2:20);
%% Question 1 data

QS7FP1 = table2array(QS7(:,1));
QS7FP2 = table2array(QS7(:,2));
QS7F3  = table2array(QS7(:,3));
QS7F4  = table2array(QS7(:,4));
QS7F7  = table2array(QS7(:,5));
QS7F8  = table2array(QS7(:,6));
QS7C3  = table2array(QS7(:,7));
QS7C4  = table2array(QS7(:,8));
QS7T7  = table2array(QS7(:,9));
QS7T8  = table2array(QS7(:,10));
QS7P3  = table2array(QS7(:,11));
QS7P4  = table2array(QS7(:,12));
QS7P7  = table2array(QS7(:,13));
QS7P8  = table2array(QS7(:,14));
QS7O1  = table2array(QS7(:,15));
QS7O2  = table2array(QS7(:,16));
QS7Fz  = table2array(QS7(:,17));
QS7Cz  = table2array(QS7(:,18));
QS7Pz  = table2array(QS7(:,19));

%% Splitband for QS7 

[QS7Gamma1,QS7Beta1,QS7Alpha1,QS7Theta1,QS7Delta1, QS7Sig0601] = splitband(QS7FP1);
[QS7Gamma2,QS7Beta2,QS7Alpha2,QS7Theta2,QS7Delta2, QS7Sig0602] = splitband(QS7FP2);
[QS7Gamma3,QS7Beta3,QS7Alpha3,QS7Theta3,QS7Delta3, QS7Sig0603] = splitband(QS7F3);
[QS7Gamma4,QS7Beta4,QS7Alpha4,QS7Theta4,QS7Delta4, QS7Sig0604] = splitband(QS7F4);
[QS7Gamma5,QS7Beta5,QS7Alpha5,QS7Theta5,QS7Delta5, QS7Sig0605] = splitband(QS7F7);
[QS7Gamma6,QS7Beta6,QS7Alpha6,QS7Theta6,QS7Delta6, QS7Sig0606] = splitband(QS7F8);
[QS7Gamma7,QS7Beta7,QS7Alpha7,QS7Theta7,QS7Delta7, QS7Sig0607] = splitband(QS7C3);
[QS7Gamma8,QS7Beta8,QS7Alpha8,QS7Theta8,QS7Delta8, QS7Sig0608] = splitband(QS7C4);
[QS7Gamma9,QS7Beta9,QS7Alpha9,QS7Theta9,QS7Delta9, QS7Sig0609] = splitband(QS7T7);
[QS7Gamma10,QS7Beta10,QS7Alpha10,QS7Theta10,QS7Delta10, QS7Sig06010] = splitband(QS7T8);
[QS7Gamma11,QS7Beta11,QS7Alpha11,QS7Theta11,QS7Delta11, QS7Sig06011] = splitband(QS7P3);
[QS7Gamma12,QS7Beta12,QS7Alpha12,QS7Theta12,QS7Delta12, QS7Sig06012] = splitband(QS7P4);
[QS7Gamma13,QS7Beta13,QS7Alpha13,QS7Theta13,QS7Delta13, QS7Sig06013] = splitband(QS7P7);
[QS7Gamma14,QS7Beta14,QS7Alpha14,QS7Theta14,QS7Delta14, QS7Sig06014] = splitband(QS7P8);
[QS7Gamma15,QS7Beta15,QS7Alpha15,QS7Theta15,QS7Delta15, QS7Sig06015] = splitband(QS7O1);
[QS7Gamma16,QS7Beta16,QS7Alpha16,QS7Theta16,QS7Delta16, QS7Sig06016] = splitband(QS7O2);
[QS7Gamma17,QS7Beta17,QS7Alpha17,QS7Theta17,QS7Delta17, QS7Sig06017] = splitband(QS7Fz);
[QS7Gamma18,QS7Beta18,QS7Alpha18,QS7Theta18,QS7Delta18, QS7Sig06018] = splitband(QS7Cz);
[QS7Gamma19,QS7Beta19,QS7Alpha19,QS7Theta19,QS7Delta19, QS7Sig06019] = splitband(QS7Pz);


%% feature extraQS7tion for QS7 

QS7s1eQS7_bandsG1 = QS7Gamma1;
QS7s1eQS7_bandsB1 = QS7Beta1;
QS7s1eQS7_bandsA1 = QS7Alpha1;
QS7s1eQS7_bandsT1 = QS7Theta1;
QS7s1eQS7_bandsD1 = QS7Delta1;
QS7s2eQS7_bandsG2 = QS7Gamma2;
QS7s2eQS7_bandsB2 = QS7Beta2;
QS7s2eQS7_bandsA2 = QS7Alpha2;
QS7s2eQS7_bandsT2 = QS7Theta2;
QS7s2eQS7_bandsD2 = QS7Delta2;
QS7s3eQS7_bandsG3 = QS7Gamma3;
QS7s3eQS7_bandsB3 = QS7Beta3;
QS7s3eQS7_bandsA3 = QS7Alpha3;
QS7s3eQS7_bandsT3 = QS7Theta3;
QS7s3eQS7_bandsD3 = QS7Delta3;
QS7s4eQS7_bandsG4 = QS7Gamma4;
QS7s4eQS7_bandsB4 = QS7Beta4;
QS7s4eQS7_bandsA4 = QS7Alpha4;
QS7s4eQS7_bandsT4 = QS7Theta4;
QS7s4eQS7_bandsD4 = QS7Delta4;
QS7s5eQS7_bandsG5 = QS7Gamma5;
QS7s5eQS7_bandsB5 = QS7Beta5;
QS7s5eQS7_bandsA5 = QS7Alpha5;
QS7s5eQS7_bandsT5 = QS7Theta5;
QS7s5eQS7_bandsD5 = QS7Delta5;
QS7s6eQS7_bandsG6 = QS7Gamma6;
QS7s6eQS7_bandsB6 = QS7Beta6;
QS7s6eQS7_bandsA6 = QS7Alpha6;
QS7s6eQS7_bandsT6 = QS7Theta6;
QS7s6eQS7_bandsD6 = QS7Delta6;
QS7s7eQS7_bandsG7 = QS7Gamma7;
QS7s7eQS7_bandsB7 = QS7Beta7;
QS7s7eQS7_bandsA7 = QS7Alpha7;
QS7s7eQS7_bandsT7 = QS7Theta7;
QS7s7eQS7_bandsD7 = QS7Delta7;
QS7s8eQS7_bandsG8 = QS7Gamma8;
QS7s8eQS7_bandsB8 = QS7Beta8;
QS7s8eQS7_bandsA8 = QS7Alpha8;
QS7s8eQS7_bandsT8 = QS7Theta8;
QS7s8eQS7_bandsD8 = QS7Delta8;
QS7s9eQS7_bandsG9 = QS7Gamma9;
QS7s9eQS7_bandsB9 = QS7Beta9;
QS7s9eQS7_bandsA9 = QS7Alpha9;
QS7s9eQS7_bandsT9 = QS7Theta9;
QS7s9eQS7_bandsD9 = QS7Delta9;
QS7s10eQS7_bandsG10 = QS7Gamma10;
QS7s10eQS7_bandsB10 = QS7Beta10;
QS7s10eQS7_bandsA10 = QS7Alpha10;
QS7s10eQS7_bandsT10 = QS7Theta10;
QS7s10eQS7_bandsD10 = QS7Delta10;
QS7s11eQS7_bandsG11 = QS7Gamma11;
QS7s11eQS7_bandsB11 = QS7Beta11;
QS7s11eQS7_bandsA11 = QS7Alpha11;
QS7s11eQS7_bandsT11 = QS7Theta11;
QS7s11eQS7_bandsD11 = QS7Delta11;
QS7s12eQS7_bandsG12 = QS7Gamma12;
QS7s12eQS7_bandsB12 = QS7Beta12;
QS7s12eQS7_bandsA12 = QS7Alpha12;
QS7s12eQS7_bandsT12= QS7Theta12;
QS7s12eQS7_bandsD12 = QS7Delta12;
QS7s13eQS7_bandsG13 = QS7Gamma13;
QS7s13eQS7_bandsB13 = QS7Beta13;
QS7s13eQS7_bandsA13 = QS7Alpha13;
QS7s13eQS7_bandsT13 = QS7Theta13;
QS7s13eQS7_bandsD13 = QS7Delta13;
QS7s14eQS7_bandsG14 = QS7Gamma14;
QS7s14eQS7_bandsB14 = QS7Beta14;
QS7s14eQS7_bandsA14 = QS7Alpha14;
QS7s14eQS7_bandsT14 = QS7Theta14;
QS7s14eQS7_bandsD14 = QS7Delta14;
QS7s15eQS7_bandsG15 = QS7Gamma15;
QS7s15eQS7_bandsB15 = QS7Beta15;
QS7s15eQS7_bandsA15 = QS7Alpha15;
QS7s15eQS7_bandsT15 = QS7Theta15;
QS7s15eQS7_bandsD15 = QS7Delta15;
QS7s16eQS7_bandsG16 = QS7Gamma16;
QS7s16eQS7_bandsB16 = QS7Beta16;
QS7s16eQS7_bandsA16 = QS7Alpha16;
QS7s16eQS7_bandsT16 = QS7Theta16;
QS7s16eQS7_bandsD16 = QS7Delta16;
QS7s17eQS7_bandsG17 = QS7Gamma17;
QS7s17eQS7_bandsB17 = QS7Beta17;
QS7s17eQS7_bandsA17 = QS7Alpha17;
QS7s17eQS7_bandsT17 = QS7Theta17;
QS7s17eQS7_bandsD17 = QS7Delta17;
QS7s18eQS7_bandsG18 = QS7Gamma18;
QS7s18eQS7_bandsB18 = QS7Beta18;
QS7s18eQS7_bandsA18 = QS7Alpha18;
QS7s18eQS7_bandsT18 = QS7Theta18;
QS7s18eQS7_bandsD18 = QS7Delta18;
QS7s19eQS7_bandsG19 = QS7Gamma19;
QS7s19eQS7_bandsB19 = QS7Beta19;
QS7s19eQS7_bandsA19 = QS7Alpha19;
QS7s19eQS7_bandsT19 = QS7Theta19;
QS7s19eQS7_bandsD19 = QS7Delta19;
QS7extFP1G1=melcepst(QS7s1eQS7_bandsG1,125,'M',12,14,1024,93);
QS7extFP1B1=melcepst(QS7s1eQS7_bandsB1,125,'M',12,14,1024,93);
QS7extFP1A1=melcepst(QS7s1eQS7_bandsA1,125,'M',12,14,1024,93);
QS7extFP1T1=melcepst(QS7s1eQS7_bandsT1,125,'M',12,14,1024,93);
QS7extFP1D1=melcepst(QS7s1eQS7_bandsD1,125,'M',12,14,1024,93);
			 
QS7extFP2G2=melcepst(QS7s2eQS7_bandsG2,125,'M',12,14,1024,93);
QS7extFP2B2=melcepst(QS7s2eQS7_bandsB2,125,'M',12,14,1024,93);
QS7extFP2A2=melcepst(QS7s2eQS7_bandsA2,125,'M',12,14,1024,93);
QS7extFP2T2=melcepst(QS7s2eQS7_bandsT2,125,'M',12,14,1024,93);
QS7extFP2D2=melcepst(QS7s2eQS7_bandsD2,125,'M',12,14,1024,93);
			   
QS7extFP3G3=melcepst(QS7s3eQS7_bandsG3,125,'M',12,14,1024,93);
QS7extFP3B3=melcepst(QS7s3eQS7_bandsB3,125,'M',12,14,1024,93);
QS7extFP3A3=melcepst(QS7s3eQS7_bandsA3,125,'M',12,14,1024,93);
QS7extFP3T3=melcepst(QS7s3eQS7_bandsT3,125,'M',12,14,1024,93);
QS7extFP3D3=melcepst(QS7s3eQS7_bandsD3,125,'M',12,14,1024,93);
			   
QS7extFP4G4=melcepst(QS7s4eQS7_bandsG4,125,'M',12,14,1024,93);
QS7extFP4B4=melcepst(QS7s4eQS7_bandsB4,125,'M',12,14,1024,93);
QS7extFP4A4=melcepst(QS7s4eQS7_bandsA4,125,'M',12,14,1024,93);
QS7extFP4T4=melcepst(QS7s4eQS7_bandsT4,125,'M',12,14,1024,93);
QS7extFP4D4=melcepst(QS7s4eQS7_bandsD4,125,'M',12,14,1024,93);
QS7extFP5G5=melcepst(QS7s5eQS7_bandsG5,125,'M',12,14,1024,93);
QS7extFP5B5=melcepst(QS7s5eQS7_bandsB5,125,'M',12,14,1024,93);
QS7extFP5A5=melcepst(QS7s5eQS7_bandsA5,125,'M',12,14,1024,93);
QS7extFP5T5=melcepst(QS7s5eQS7_bandsT5,125,'M',12,14,1024,93);
QS7extFP5D5=melcepst(QS7s5eQS7_bandsD5,125,'M',12,14,1024,93);
QS7extFP6G6=melcepst(QS7s6eQS7_bandsG6,125,'M',12,14,1024,93);
QS7extFP6B6=melcepst(QS7s6eQS7_bandsB6,125,'M',12,14,1024,93);
QS7extFP6A6=melcepst(QS7s6eQS7_bandsA6,125,'M',12,14,1024,93);
QS7extFP6T6=melcepst(QS7s6eQS7_bandsT6,125,'M',12,14,1024,93);
QS7extFP6D6=melcepst(QS7s6eQS7_bandsD6,125,'M',12,14,1024,93);
QS7extFP7G7=melcepst(QS7s7eQS7_bandsG7,125,'M',12,14,1024,93);
QS7extFP7B7=melcepst(QS7s7eQS7_bandsB7,125,'M',12,14,1024,93);
QS7extFP7A7=melcepst(QS7s7eQS7_bandsA7,125,'M',12,14,1024,93);
QS7extFP7T7=melcepst(QS7s7eQS7_bandsT7,125,'M',12,14,1024,93);
QS7extFP7D7=melcepst(QS7s7eQS7_bandsD7,125,'M',12,14,1024,93);
QS7extFP8G8=melcepst(QS7s8eQS7_bandsG8,125,'M',12,14,1024,93);
QS7extFP8B8=melcepst(QS7s8eQS7_bandsB8,125,'M',12,14,1024,93);
QS7extFP8A8=melcepst(QS7s8eQS7_bandsA8,125,'M',12,14,1024,93);
QS7extFP8T8=melcepst(QS7s8eQS7_bandsT8,125,'M',12,14,1024,93);
QS7extFP8D8=melcepst(QS7s8eQS7_bandsD8,125,'M',12,14,1024,93);
QS7extFP9G9=melcepst(QS7s9eQS7_bandsG9,125,'M',12,14,1024,93);
QS7extFP9B9=melcepst(QS7s9eQS7_bandsB9,125,'M',12,14,1024,93);
QS7extFP9A9=melcepst(QS7s9eQS7_bandsA9,125,'M',12,14,1024,93);
QS7extFP9T9=melcepst(QS7s9eQS7_bandsT9,125,'M',12,14,1024,93);
QS7extFP9D9=melcepst(QS7s9eQS7_bandsD9,125,'M',12,14,1024,93);
QS7extFP10G10=melcepst(QS7s10eQS7_bandsG10,125,'M',12,14,1024,93);
QS7extFP10B10=melcepst(QS7s10eQS7_bandsB10,125,'M',12,14,1024,93);
QS7extFP10A10=melcepst(QS7s10eQS7_bandsA10,125,'M',12,14,1024,93);
QS7extFP10T10=melcepst(QS7s10eQS7_bandsT10,125,'M',12,14,1024,93);
QS7extFP10D10=melcepst(QS7s10eQS7_bandsD10,125,'M',12,14,1024,93);
QS7extFP11G11=melcepst(QS7s11eQS7_bandsG11,125,'M',12,14,1024,93);
QS7extFP11B11=melcepst(QS7s11eQS7_bandsB11,125,'M',12,14,1024,93);
QS7extFP11A11=melcepst(QS7s11eQS7_bandsA11,125,'M',12,14,1024,93);
QS7extFP11T11=melcepst(QS7s11eQS7_bandsT11,125,'M',12,14,1024,93);
QS7extFP11D11=melcepst(QS7s11eQS7_bandsD11,125,'M',12,14,1024,93);
QS7extFP12G12=melcepst(QS7s12eQS7_bandsG12,125,'M',12,14,1024,93);
QS7extFP12B12=melcepst(QS7s12eQS7_bandsB12,125,'M',12,14,1024,93);
QS7extFP12A12=melcepst(QS7s12eQS7_bandsA12,125,'M',12,14,1024,93);
QS7extFP12T12=melcepst(QS7s12eQS7_bandsT12,125,'M',12,14,1024,93);
QS7extFP12D12=melcepst(QS7s12eQS7_bandsD12,125,'M',12,14,1024,93);
QS7extFP13G13=melcepst(QS7s13eQS7_bandsG13,125,'M',12,14,1024,93);
QS7extFP13B13=melcepst(QS7s13eQS7_bandsB13,125,'M',12,14,1024,93);
QS7extFP13A13=melcepst(QS7s13eQS7_bandsA13,125,'M',12,14,1024,93);
QS7extFP13T13=melcepst(QS7s13eQS7_bandsT13,125,'M',12,14,1024,93);
QS7extFP13D13=melcepst(QS7s13eQS7_bandsD13,125,'M',12,14,1024,93);
QS7extFP14G14=melcepst(QS7s14eQS7_bandsG14,125,'M',12,14,1024,93);
QS7extFP14B14=melcepst(QS7s14eQS7_bandsB14,125,'M',12,14,1024,93);
QS7extFP14A14=melcepst(QS7s14eQS7_bandsA14,125,'M',12,14,1024,93);
QS7extFP14T14=melcepst(QS7s14eQS7_bandsT14,125,'M',12,14,1024,93);
QS7extFP14D14=melcepst(QS7s14eQS7_bandsD14,125,'M',12,14,1024,93);
QS7extFP15G15=melcepst(QS7s15eQS7_bandsG15,125,'M',12,14,1024,93);
QS7extFP15B15=melcepst(QS7s15eQS7_bandsB15,125,'M',12,14,1024,93);
QS7extFP15A15=melcepst(QS7s15eQS7_bandsA15,125,'M',12,14,1024,93);
QS7extFP15T15=melcepst(QS7s15eQS7_bandsT15,125,'M',12,14,1024,93);
QS7extFP15D15=melcepst(QS7s15eQS7_bandsD15,125,'M',12,14,1024,93);
QS7extFP16G16=melcepst(QS7s16eQS7_bandsG16,125,'M',12,14,1024,93);
QS7extFP16B16=melcepst(QS7s16eQS7_bandsB16,125,'M',12,14,1024,93);
QS7extFP16A16=melcepst(QS7s16eQS7_bandsA16,125,'M',12,14,1024,93);
QS7extFP16T16=melcepst(QS7s16eQS7_bandsT16,125,'M',12,14,1024,93);
QS7extFP16D16=melcepst(QS7s16eQS7_bandsD16,125,'M',12,14,1024,93);
QS7extFP17G17=melcepst(QS7s17eQS7_bandsG17,125,'M',12,14,1024,93);
QS7extFP17B17=melcepst(QS7s17eQS7_bandsB17,125,'M',12,14,1024,93);
QS7extFP17A17=melcepst(QS7s17eQS7_bandsA17,125,'M',12,14,1024,93);
QS7extFP17T17=melcepst(QS7s17eQS7_bandsT17,125,'M',12,14,1024,93);
QS7extFP17D17=melcepst(QS7s17eQS7_bandsD17,125,'M',12,14,1024,93);
QS7extFP18G18=melcepst(QS7s18eQS7_bandsG18,125,'M',12,14,1024,93);
QS7extFP18B18=melcepst(QS7s18eQS7_bandsB18,125,'M',12,14,1024,93);
QS7extFP18A18=melcepst(QS7s18eQS7_bandsA18,125,'M',12,14,1024,93);
QS7extFP18T18=melcepst(QS7s18eQS7_bandsT18,125,'M',12,14,1024,93);
QS7extFP18D18=melcepst(QS7s18eQS7_bandsD18,125,'M',12,14,1024,93);
QS7extFP19G19=melcepst(QS7s19eQS7_bandsG19,125,'M',12,14,1024,93);
QS7extFP19B19=melcepst(QS7s19eQS7_bandsB19,125,'M',12,14,1024,93);
QS7extFP19A19=melcepst(QS7s19eQS7_bandsA19,125,'M',12,14,1024,93);
QS7extFP19T19=melcepst(QS7s19eQS7_bandsT19,125,'M',12,14,1024,93);
QS7extFP19D19=melcepst(QS7s19eQS7_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS7AALPHA = [QS7extFP1A1;QS7extFP2A2;QS7extFP3A3; QS7extFP4A4;QS7extFP5A5;QS7extFP6A6;QS7extFP7A7;QS7extFP8A8;QS7extFP9A9;QS7extFP10A10;QS7extFP11A11;QS7extFP12A12;QS7extFP13A13;QS7extFP14A14;QS7extFP15A15;QS7extFP16A16;QS7extFP17A17;QS7extFP18A18;QS7extFP19A19];


%%set expected output


QS7AALPHA(:,13)=0;
QS7AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS7AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS7AALPHA(:,1:12); 
tgtestS=QS7AALPHA(:,13:14);


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
