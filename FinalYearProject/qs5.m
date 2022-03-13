%% Load the dataset 

QS5  = readtable("QS5.csv");

%Delete time table
QS5=QS5(:,2:20);
%% Question 1 data

QS5FP1 = table2array(QS5(:,1));
QS5FP2 = table2array(QS5(:,2));
QS5F3  = table2array(QS5(:,3));
QS5F4  = table2array(QS5(:,4));
QS5F7  = table2array(QS5(:,5));
QS5F8  = table2array(QS5(:,6));
QS5C3  = table2array(QS5(:,7));
QS5C4  = table2array(QS5(:,8));
QS5T7  = table2array(QS5(:,9));
QS5T8  = table2array(QS5(:,10));
QS5P3  = table2array(QS5(:,11));
QS5P4  = table2array(QS5(:,12));
QS5P7  = table2array(QS5(:,13));
QS5P8  = table2array(QS5(:,14));
QS5O1  = table2array(QS5(:,15));
QS5O2  = table2array(QS5(:,16));
QS5Fz  = table2array(QS5(:,17));
QS5Cz  = table2array(QS5(:,18));
QS5Pz  = table2array(QS5(:,19));

%% Splitband for QS5 

[QS5Gamma1,QS5Beta1,QS5Alpha1,QS5Theta1,QS5Delta1, QS5Sig0601] = splitband(QS5FP1);
[QS5Gamma2,QS5Beta2,QS5Alpha2,QS5Theta2,QS5Delta2, QS5Sig0602] = splitband(QS5FP2);
[QS5Gamma3,QS5Beta3,QS5Alpha3,QS5Theta3,QS5Delta3, QS5Sig0603] = splitband(QS5F3);
[QS5Gamma4,QS5Beta4,QS5Alpha4,QS5Theta4,QS5Delta4, QS5Sig0604] = splitband(QS5F4);
[QS5Gamma5,QS5Beta5,QS5Alpha5,QS5Theta5,QS5Delta5, QS5Sig0605] = splitband(QS5F7);
[QS5Gamma6,QS5Beta6,QS5Alpha6,QS5Theta6,QS5Delta6, QS5Sig0606] = splitband(QS5F8);
[QS5Gamma7,QS5Beta7,QS5Alpha7,QS5Theta7,QS5Delta7, QS5Sig0607] = splitband(QS5C3);
[QS5Gamma8,QS5Beta8,QS5Alpha8,QS5Theta8,QS5Delta8, QS5Sig0608] = splitband(QS5C4);
[QS5Gamma9,QS5Beta9,QS5Alpha9,QS5Theta9,QS5Delta9, QS5Sig0609] = splitband(QS5T7);
[QS5Gamma10,QS5Beta10,QS5Alpha10,QS5Theta10,QS5Delta10, QS5Sig06010] = splitband(QS5T8);
[QS5Gamma11,QS5Beta11,QS5Alpha11,QS5Theta11,QS5Delta11, QS5Sig06011] = splitband(QS5P3);
[QS5Gamma12,QS5Beta12,QS5Alpha12,QS5Theta12,QS5Delta12, QS5Sig06012] = splitband(QS5P4);
[QS5Gamma13,QS5Beta13,QS5Alpha13,QS5Theta13,QS5Delta13, QS5Sig06013] = splitband(QS5P7);
[QS5Gamma14,QS5Beta14,QS5Alpha14,QS5Theta14,QS5Delta14, QS5Sig06014] = splitband(QS5P8);
[QS5Gamma15,QS5Beta15,QS5Alpha15,QS5Theta15,QS5Delta15, QS5Sig06015] = splitband(QS5O1);
[QS5Gamma16,QS5Beta16,QS5Alpha16,QS5Theta16,QS5Delta16, QS5Sig06016] = splitband(QS5O2);
[QS5Gamma17,QS5Beta17,QS5Alpha17,QS5Theta17,QS5Delta17, QS5Sig06017] = splitband(QS5Fz);
[QS5Gamma18,QS5Beta18,QS5Alpha18,QS5Theta18,QS5Delta18, QS5Sig06018] = splitband(QS5Cz);
[QS5Gamma19,QS5Beta19,QS5Alpha19,QS5Theta19,QS5Delta19, QS5Sig06019] = splitband(QS5Pz);


%% feature extraQS5tion for QS5 

QS5s1eQS5_bandsG1 = QS5Gamma1;
QS5s1eQS5_bandsB1 = QS5Beta1;
QS5s1eQS5_bandsA1 = QS5Alpha1;
QS5s1eQS5_bandsT1 = QS5Theta1;
QS5s1eQS5_bandsD1 = QS5Delta1;
QS5s2eQS5_bandsG2 = QS5Gamma2;
QS5s2eQS5_bandsB2 = QS5Beta2;
QS5s2eQS5_bandsA2 = QS5Alpha2;
QS5s2eQS5_bandsT2 = QS5Theta2;
QS5s2eQS5_bandsD2 = QS5Delta2;
QS5s3eQS5_bandsG3 = QS5Gamma3;
QS5s3eQS5_bandsB3 = QS5Beta3;
QS5s3eQS5_bandsA3 = QS5Alpha3;
QS5s3eQS5_bandsT3 = QS5Theta3;
QS5s3eQS5_bandsD3 = QS5Delta3;
QS5s4eQS5_bandsG4 = QS5Gamma4;
QS5s4eQS5_bandsB4 = QS5Beta4;
QS5s4eQS5_bandsA4 = QS5Alpha4;
QS5s4eQS5_bandsT4 = QS5Theta4;
QS5s4eQS5_bandsD4 = QS5Delta4;
QS5s5eQS5_bandsG5 = QS5Gamma5;
QS5s5eQS5_bandsB5 = QS5Beta5;
QS5s5eQS5_bandsA5 = QS5Alpha5;
QS5s5eQS5_bandsT5 = QS5Theta5;
QS5s5eQS5_bandsD5 = QS5Delta5;
QS5s6eQS5_bandsG6 = QS5Gamma6;
QS5s6eQS5_bandsB6 = QS5Beta6;
QS5s6eQS5_bandsA6 = QS5Alpha6;
QS5s6eQS5_bandsT6 = QS5Theta6;
QS5s6eQS5_bandsD6 = QS5Delta6;
QS5s7eQS5_bandsG7 = QS5Gamma7;
QS5s7eQS5_bandsB7 = QS5Beta7;
QS5s7eQS5_bandsA7 = QS5Alpha7;
QS5s7eQS5_bandsT7 = QS5Theta7;
QS5s7eQS5_bandsD7 = QS5Delta7;
QS5s8eQS5_bandsG8 = QS5Gamma8;
QS5s8eQS5_bandsB8 = QS5Beta8;
QS5s8eQS5_bandsA8 = QS5Alpha8;
QS5s8eQS5_bandsT8 = QS5Theta8;
QS5s8eQS5_bandsD8 = QS5Delta8;
QS5s9eQS5_bandsG9 = QS5Gamma9;
QS5s9eQS5_bandsB9 = QS5Beta9;
QS5s9eQS5_bandsA9 = QS5Alpha9;
QS5s9eQS5_bandsT9 = QS5Theta9;
QS5s9eQS5_bandsD9 = QS5Delta9;
QS5s10eQS5_bandsG10 = QS5Gamma10;
QS5s10eQS5_bandsB10 = QS5Beta10;
QS5s10eQS5_bandsA10 = QS5Alpha10;
QS5s10eQS5_bandsT10 = QS5Theta10;
QS5s10eQS5_bandsD10 = QS5Delta10;
QS5s11eQS5_bandsG11 = QS5Gamma11;
QS5s11eQS5_bandsB11 = QS5Beta11;
QS5s11eQS5_bandsA11 = QS5Alpha11;
QS5s11eQS5_bandsT11 = QS5Theta11;
QS5s11eQS5_bandsD11 = QS5Delta11;
QS5s12eQS5_bandsG12 = QS5Gamma12;
QS5s12eQS5_bandsB12 = QS5Beta12;
QS5s12eQS5_bandsA12 = QS5Alpha12;
QS5s12eQS5_bandsT12= QS5Theta12;
QS5s12eQS5_bandsD12 = QS5Delta12;
QS5s13eQS5_bandsG13 = QS5Gamma13;
QS5s13eQS5_bandsB13 = QS5Beta13;
QS5s13eQS5_bandsA13 = QS5Alpha13;
QS5s13eQS5_bandsT13 = QS5Theta13;
QS5s13eQS5_bandsD13 = QS5Delta13;
QS5s14eQS5_bandsG14 = QS5Gamma14;
QS5s14eQS5_bandsB14 = QS5Beta14;
QS5s14eQS5_bandsA14 = QS5Alpha14;
QS5s14eQS5_bandsT14 = QS5Theta14;
QS5s14eQS5_bandsD14 = QS5Delta14;
QS5s15eQS5_bandsG15 = QS5Gamma15;
QS5s15eQS5_bandsB15 = QS5Beta15;
QS5s15eQS5_bandsA15 = QS5Alpha15;
QS5s15eQS5_bandsT15 = QS5Theta15;
QS5s15eQS5_bandsD15 = QS5Delta15;
QS5s16eQS5_bandsG16 = QS5Gamma16;
QS5s16eQS5_bandsB16 = QS5Beta16;
QS5s16eQS5_bandsA16 = QS5Alpha16;
QS5s16eQS5_bandsT16 = QS5Theta16;
QS5s16eQS5_bandsD16 = QS5Delta16;
QS5s17eQS5_bandsG17 = QS5Gamma17;
QS5s17eQS5_bandsB17 = QS5Beta17;
QS5s17eQS5_bandsA17 = QS5Alpha17;
QS5s17eQS5_bandsT17 = QS5Theta17;
QS5s17eQS5_bandsD17 = QS5Delta17;
QS5s18eQS5_bandsG18 = QS5Gamma18;
QS5s18eQS5_bandsB18 = QS5Beta18;
QS5s18eQS5_bandsA18 = QS5Alpha18;
QS5s18eQS5_bandsT18 = QS5Theta18;
QS5s18eQS5_bandsD18 = QS5Delta18;
QS5s19eQS5_bandsG19 = QS5Gamma19;
QS5s19eQS5_bandsB19 = QS5Beta19;
QS5s19eQS5_bandsA19 = QS5Alpha19;
QS5s19eQS5_bandsT19 = QS5Theta19;
QS5s19eQS5_bandsD19 = QS5Delta19;
QS5extFP1G1=melcepst(QS5s1eQS5_bandsG1,125,'M',12,14,1024,93);
QS5extFP1B1=melcepst(QS5s1eQS5_bandsB1,125,'M',12,14,1024,93);
QS5extFP1A1=melcepst(QS5s1eQS5_bandsA1,125,'M',12,14,1024,93);
QS5extFP1T1=melcepst(QS5s1eQS5_bandsT1,125,'M',12,14,1024,93);
QS5extFP1D1=melcepst(QS5s1eQS5_bandsD1,125,'M',12,14,1024,93);
			 
QS5extFP2G2=melcepst(QS5s2eQS5_bandsG2,125,'M',12,14,1024,93);
QS5extFP2B2=melcepst(QS5s2eQS5_bandsB2,125,'M',12,14,1024,93);
QS5extFP2A2=melcepst(QS5s2eQS5_bandsA2,125,'M',12,14,1024,93);
QS5extFP2T2=melcepst(QS5s2eQS5_bandsT2,125,'M',12,14,1024,93);
QS5extFP2D2=melcepst(QS5s2eQS5_bandsD2,125,'M',12,14,1024,93);
			   
QS5extFP3G3=melcepst(QS5s3eQS5_bandsG3,125,'M',12,14,1024,93);
QS5extFP3B3=melcepst(QS5s3eQS5_bandsB3,125,'M',12,14,1024,93);
QS5extFP3A3=melcepst(QS5s3eQS5_bandsA3,125,'M',12,14,1024,93);
QS5extFP3T3=melcepst(QS5s3eQS5_bandsT3,125,'M',12,14,1024,93);
QS5extFP3D3=melcepst(QS5s3eQS5_bandsD3,125,'M',12,14,1024,93);
			   
QS5extFP4G4=melcepst(QS5s4eQS5_bandsG4,125,'M',12,14,1024,93);
QS5extFP4B4=melcepst(QS5s4eQS5_bandsB4,125,'M',12,14,1024,93);
QS5extFP4A4=melcepst(QS5s4eQS5_bandsA4,125,'M',12,14,1024,93);
QS5extFP4T4=melcepst(QS5s4eQS5_bandsT4,125,'M',12,14,1024,93);
QS5extFP4D4=melcepst(QS5s4eQS5_bandsD4,125,'M',12,14,1024,93);
QS5extFP5G5=melcepst(QS5s5eQS5_bandsG5,125,'M',12,14,1024,93);
QS5extFP5B5=melcepst(QS5s5eQS5_bandsB5,125,'M',12,14,1024,93);
QS5extFP5A5=melcepst(QS5s5eQS5_bandsA5,125,'M',12,14,1024,93);
QS5extFP5T5=melcepst(QS5s5eQS5_bandsT5,125,'M',12,14,1024,93);
QS5extFP5D5=melcepst(QS5s5eQS5_bandsD5,125,'M',12,14,1024,93);
QS5extFP6G6=melcepst(QS5s6eQS5_bandsG6,125,'M',12,14,1024,93);
QS5extFP6B6=melcepst(QS5s6eQS5_bandsB6,125,'M',12,14,1024,93);
QS5extFP6A6=melcepst(QS5s6eQS5_bandsA6,125,'M',12,14,1024,93);
QS5extFP6T6=melcepst(QS5s6eQS5_bandsT6,125,'M',12,14,1024,93);
QS5extFP6D6=melcepst(QS5s6eQS5_bandsD6,125,'M',12,14,1024,93);
QS5extFP7G7=melcepst(QS5s7eQS5_bandsG7,125,'M',12,14,1024,93);
QS5extFP7B7=melcepst(QS5s7eQS5_bandsB7,125,'M',12,14,1024,93);
QS5extFP7A7=melcepst(QS5s7eQS5_bandsA7,125,'M',12,14,1024,93);
QS5extFP7T7=melcepst(QS5s7eQS5_bandsT7,125,'M',12,14,1024,93);
QS5extFP7D7=melcepst(QS5s7eQS5_bandsD7,125,'M',12,14,1024,93);
QS5extFP8G8=melcepst(QS5s8eQS5_bandsG8,125,'M',12,14,1024,93);
QS5extFP8B8=melcepst(QS5s8eQS5_bandsB8,125,'M',12,14,1024,93);
QS5extFP8A8=melcepst(QS5s8eQS5_bandsA8,125,'M',12,14,1024,93);
QS5extFP8T8=melcepst(QS5s8eQS5_bandsT8,125,'M',12,14,1024,93);
QS5extFP8D8=melcepst(QS5s8eQS5_bandsD8,125,'M',12,14,1024,93);
QS5extFP9G9=melcepst(QS5s9eQS5_bandsG9,125,'M',12,14,1024,93);
QS5extFP9B9=melcepst(QS5s9eQS5_bandsB9,125,'M',12,14,1024,93);
QS5extFP9A9=melcepst(QS5s9eQS5_bandsA9,125,'M',12,14,1024,93);
QS5extFP9T9=melcepst(QS5s9eQS5_bandsT9,125,'M',12,14,1024,93);
QS5extFP9D9=melcepst(QS5s9eQS5_bandsD9,125,'M',12,14,1024,93);
QS5extFP10G10=melcepst(QS5s10eQS5_bandsG10,125,'M',12,14,1024,93);
QS5extFP10B10=melcepst(QS5s10eQS5_bandsB10,125,'M',12,14,1024,93);
QS5extFP10A10=melcepst(QS5s10eQS5_bandsA10,125,'M',12,14,1024,93);
QS5extFP10T10=melcepst(QS5s10eQS5_bandsT10,125,'M',12,14,1024,93);
QS5extFP10D10=melcepst(QS5s10eQS5_bandsD10,125,'M',12,14,1024,93);
QS5extFP11G11=melcepst(QS5s11eQS5_bandsG11,125,'M',12,14,1024,93);
QS5extFP11B11=melcepst(QS5s11eQS5_bandsB11,125,'M',12,14,1024,93);
QS5extFP11A11=melcepst(QS5s11eQS5_bandsA11,125,'M',12,14,1024,93);
QS5extFP11T11=melcepst(QS5s11eQS5_bandsT11,125,'M',12,14,1024,93);
QS5extFP11D11=melcepst(QS5s11eQS5_bandsD11,125,'M',12,14,1024,93);
QS5extFP12G12=melcepst(QS5s12eQS5_bandsG12,125,'M',12,14,1024,93);
QS5extFP12B12=melcepst(QS5s12eQS5_bandsB12,125,'M',12,14,1024,93);
QS5extFP12A12=melcepst(QS5s12eQS5_bandsA12,125,'M',12,14,1024,93);
QS5extFP12T12=melcepst(QS5s12eQS5_bandsT12,125,'M',12,14,1024,93);
QS5extFP12D12=melcepst(QS5s12eQS5_bandsD12,125,'M',12,14,1024,93);
QS5extFP13G13=melcepst(QS5s13eQS5_bandsG13,125,'M',12,14,1024,93);
QS5extFP13B13=melcepst(QS5s13eQS5_bandsB13,125,'M',12,14,1024,93);
QS5extFP13A13=melcepst(QS5s13eQS5_bandsA13,125,'M',12,14,1024,93);
QS5extFP13T13=melcepst(QS5s13eQS5_bandsT13,125,'M',12,14,1024,93);
QS5extFP13D13=melcepst(QS5s13eQS5_bandsD13,125,'M',12,14,1024,93);
QS5extFP14G14=melcepst(QS5s14eQS5_bandsG14,125,'M',12,14,1024,93);
QS5extFP14B14=melcepst(QS5s14eQS5_bandsB14,125,'M',12,14,1024,93);
QS5extFP14A14=melcepst(QS5s14eQS5_bandsA14,125,'M',12,14,1024,93);
QS5extFP14T14=melcepst(QS5s14eQS5_bandsT14,125,'M',12,14,1024,93);
QS5extFP14D14=melcepst(QS5s14eQS5_bandsD14,125,'M',12,14,1024,93);
QS5extFP15G15=melcepst(QS5s15eQS5_bandsG15,125,'M',12,14,1024,93);
QS5extFP15B15=melcepst(QS5s15eQS5_bandsB15,125,'M',12,14,1024,93);
QS5extFP15A15=melcepst(QS5s15eQS5_bandsA15,125,'M',12,14,1024,93);
QS5extFP15T15=melcepst(QS5s15eQS5_bandsT15,125,'M',12,14,1024,93);
QS5extFP15D15=melcepst(QS5s15eQS5_bandsD15,125,'M',12,14,1024,93);
QS5extFP16G16=melcepst(QS5s16eQS5_bandsG16,125,'M',12,14,1024,93);
QS5extFP16B16=melcepst(QS5s16eQS5_bandsB16,125,'M',12,14,1024,93);
QS5extFP16A16=melcepst(QS5s16eQS5_bandsA16,125,'M',12,14,1024,93);
QS5extFP16T16=melcepst(QS5s16eQS5_bandsT16,125,'M',12,14,1024,93);
QS5extFP16D16=melcepst(QS5s16eQS5_bandsD16,125,'M',12,14,1024,93);
QS5extFP17G17=melcepst(QS5s17eQS5_bandsG17,125,'M',12,14,1024,93);
QS5extFP17B17=melcepst(QS5s17eQS5_bandsB17,125,'M',12,14,1024,93);
QS5extFP17A17=melcepst(QS5s17eQS5_bandsA17,125,'M',12,14,1024,93);
QS5extFP17T17=melcepst(QS5s17eQS5_bandsT17,125,'M',12,14,1024,93);
QS5extFP17D17=melcepst(QS5s17eQS5_bandsD17,125,'M',12,14,1024,93);
QS5extFP18G18=melcepst(QS5s18eQS5_bandsG18,125,'M',12,14,1024,93);
QS5extFP18B18=melcepst(QS5s18eQS5_bandsB18,125,'M',12,14,1024,93);
QS5extFP18A18=melcepst(QS5s18eQS5_bandsA18,125,'M',12,14,1024,93);
QS5extFP18T18=melcepst(QS5s18eQS5_bandsT18,125,'M',12,14,1024,93);
QS5extFP18D18=melcepst(QS5s18eQS5_bandsD18,125,'M',12,14,1024,93);
QS5extFP19G19=melcepst(QS5s19eQS5_bandsG19,125,'M',12,14,1024,93);
QS5extFP19B19=melcepst(QS5s19eQS5_bandsB19,125,'M',12,14,1024,93);
QS5extFP19A19=melcepst(QS5s19eQS5_bandsA19,125,'M',12,14,1024,93);
QS5extFP19T19=melcepst(QS5s19eQS5_bandsT19,125,'M',12,14,1024,93);
QS5extFP19D19=melcepst(QS5s19eQS5_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS5AALPHA = [QS5extFP1A1;QS5extFP2A2;QS5extFP3A3; QS5extFP4A4;QS5extFP5A5;QS5extFP6A6;QS5extFP7A7;QS5extFP8A8;QS5extFP9A9;QS5extFP10A10;QS5extFP11A11;QS5extFP12A12;QS5extFP13A13;QS5extFP14A14;QS5extFP15A15;QS5extFP16A16;QS5extFP17A17;QS5extFP18A18;QS5extFP19A19];


%%set expected output


QS5AALPHA(:,13)=0;
QS5AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS5AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS5AALPHA(:,1:12); 
tgtestS=QS5AALPHA(:,13:14);


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
