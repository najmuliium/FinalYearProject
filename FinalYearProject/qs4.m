%% Load the dataset 

QS4  = readtable("QS4.csv");

%Delete time table
QS4=QS4(:,2:20);
%% Question 1 data

QS4FP1 = table2array(QS4(:,1));
QS4FP2 = table2array(QS4(:,2));
QS4F3  = table2array(QS4(:,3));
QS4F4  = table2array(QS4(:,4));
QS4F7  = table2array(QS4(:,5));
QS4F8  = table2array(QS4(:,6));
QS4C3  = table2array(QS4(:,7));
QS4C4  = table2array(QS4(:,8));
QS4T7  = table2array(QS4(:,9));
QS4T8  = table2array(QS4(:,10));
QS4P3  = table2array(QS4(:,11));
QS4P4  = table2array(QS4(:,12));
QS4P7  = table2array(QS4(:,13));
QS4P8  = table2array(QS4(:,14));
QS4O1  = table2array(QS4(:,15));
QS4O2  = table2array(QS4(:,16));
QS4Fz  = table2array(QS4(:,17));
QS4Cz  = table2array(QS4(:,18));
QS4Pz  = table2array(QS4(:,19));

%% Splitband for QS4 

[QS4Gamma1,QS4Beta1,QS4Alpha1,QS4Theta1,QS4Delta1, QS4Sig0601] = splitband(QS4FP1);
[QS4Gamma2,QS4Beta2,QS4Alpha2,QS4Theta2,QS4Delta2, QS4Sig0602] = splitband(QS4FP2);
[QS4Gamma3,QS4Beta3,QS4Alpha3,QS4Theta3,QS4Delta3, QS4Sig0603] = splitband(QS4F3);
[QS4Gamma4,QS4Beta4,QS4Alpha4,QS4Theta4,QS4Delta4, QS4Sig0604] = splitband(QS4F4);
[QS4Gamma5,QS4Beta5,QS4Alpha5,QS4Theta5,QS4Delta5, QS4Sig0605] = splitband(QS4F7);
[QS4Gamma6,QS4Beta6,QS4Alpha6,QS4Theta6,QS4Delta6, QS4Sig0606] = splitband(QS4F8);
[QS4Gamma7,QS4Beta7,QS4Alpha7,QS4Theta7,QS4Delta7, QS4Sig0607] = splitband(QS4C3);
[QS4Gamma8,QS4Beta8,QS4Alpha8,QS4Theta8,QS4Delta8, QS4Sig0608] = splitband(QS4C4);
[QS4Gamma9,QS4Beta9,QS4Alpha9,QS4Theta9,QS4Delta9, QS4Sig0609] = splitband(QS4T7);
[QS4Gamma10,QS4Beta10,QS4Alpha10,QS4Theta10,QS4Delta10, QS4Sig06010] = splitband(QS4T8);
[QS4Gamma11,QS4Beta11,QS4Alpha11,QS4Theta11,QS4Delta11, QS4Sig06011] = splitband(QS4P3);
[QS4Gamma12,QS4Beta12,QS4Alpha12,QS4Theta12,QS4Delta12, QS4Sig06012] = splitband(QS4P4);
[QS4Gamma13,QS4Beta13,QS4Alpha13,QS4Theta13,QS4Delta13, QS4Sig06013] = splitband(QS4P7);
[QS4Gamma14,QS4Beta14,QS4Alpha14,QS4Theta14,QS4Delta14, QS4Sig06014] = splitband(QS4P8);
[QS4Gamma15,QS4Beta15,QS4Alpha15,QS4Theta15,QS4Delta15, QS4Sig06015] = splitband(QS4O1);
[QS4Gamma16,QS4Beta16,QS4Alpha16,QS4Theta16,QS4Delta16, QS4Sig06016] = splitband(QS4O2);
[QS4Gamma17,QS4Beta17,QS4Alpha17,QS4Theta17,QS4Delta17, QS4Sig06017] = splitband(QS4Fz);
[QS4Gamma18,QS4Beta18,QS4Alpha18,QS4Theta18,QS4Delta18, QS4Sig06018] = splitband(QS4Cz);
[QS4Gamma19,QS4Beta19,QS4Alpha19,QS4Theta19,QS4Delta19, QS4Sig06019] = splitband(QS4Pz);


%% feature extraQS4tion for QS4 

QS4s1eQS4_bandsG1 = QS4Gamma1;
QS4s1eQS4_bandsB1 = QS4Beta1;
QS4s1eQS4_bandsA1 = QS4Alpha1;
QS4s1eQS4_bandsT1 = QS4Theta1;
QS4s1eQS4_bandsD1 = QS4Delta1;
QS4s2eQS4_bandsG2 = QS4Gamma2;
QS4s2eQS4_bandsB2 = QS4Beta2;
QS4s2eQS4_bandsA2 = QS4Alpha2;
QS4s2eQS4_bandsT2 = QS4Theta2;
QS4s2eQS4_bandsD2 = QS4Delta2;
QS4s3eQS4_bandsG3 = QS4Gamma3;
QS4s3eQS4_bandsB3 = QS4Beta3;
QS4s3eQS4_bandsA3 = QS4Alpha3;
QS4s3eQS4_bandsT3 = QS4Theta3;
QS4s3eQS4_bandsD3 = QS4Delta3;
QS4s4eQS4_bandsG4 = QS4Gamma4;
QS4s4eQS4_bandsB4 = QS4Beta4;
QS4s4eQS4_bandsA4 = QS4Alpha4;
QS4s4eQS4_bandsT4 = QS4Theta4;
QS4s4eQS4_bandsD4 = QS4Delta4;
QS4s5eQS4_bandsG5 = QS4Gamma5;
QS4s5eQS4_bandsB5 = QS4Beta5;
QS4s5eQS4_bandsA5 = QS4Alpha5;
QS4s5eQS4_bandsT5 = QS4Theta5;
QS4s5eQS4_bandsD5 = QS4Delta5;
QS4s6eQS4_bandsG6 = QS4Gamma6;
QS4s6eQS4_bandsB6 = QS4Beta6;
QS4s6eQS4_bandsA6 = QS4Alpha6;
QS4s6eQS4_bandsT6 = QS4Theta6;
QS4s6eQS4_bandsD6 = QS4Delta6;
QS4s7eQS4_bandsG7 = QS4Gamma7;
QS4s7eQS4_bandsB7 = QS4Beta7;
QS4s7eQS4_bandsA7 = QS4Alpha7;
QS4s7eQS4_bandsT7 = QS4Theta7;
QS4s7eQS4_bandsD7 = QS4Delta7;
QS4s8eQS4_bandsG8 = QS4Gamma8;
QS4s8eQS4_bandsB8 = QS4Beta8;
QS4s8eQS4_bandsA8 = QS4Alpha8;
QS4s8eQS4_bandsT8 = QS4Theta8;
QS4s8eQS4_bandsD8 = QS4Delta8;
QS4s9eQS4_bandsG9 = QS4Gamma9;
QS4s9eQS4_bandsB9 = QS4Beta9;
QS4s9eQS4_bandsA9 = QS4Alpha9;
QS4s9eQS4_bandsT9 = QS4Theta9;
QS4s9eQS4_bandsD9 = QS4Delta9;
QS4s10eQS4_bandsG10 = QS4Gamma10;
QS4s10eQS4_bandsB10 = QS4Beta10;
QS4s10eQS4_bandsA10 = QS4Alpha10;
QS4s10eQS4_bandsT10 = QS4Theta10;
QS4s10eQS4_bandsD10 = QS4Delta10;
QS4s11eQS4_bandsG11 = QS4Gamma11;
QS4s11eQS4_bandsB11 = QS4Beta11;
QS4s11eQS4_bandsA11 = QS4Alpha11;
QS4s11eQS4_bandsT11 = QS4Theta11;
QS4s11eQS4_bandsD11 = QS4Delta11;
QS4s12eQS4_bandsG12 = QS4Gamma12;
QS4s12eQS4_bandsB12 = QS4Beta12;
QS4s12eQS4_bandsA12 = QS4Alpha12;
QS4s12eQS4_bandsT12= QS4Theta12;
QS4s12eQS4_bandsD12 = QS4Delta12;
QS4s13eQS4_bandsG13 = QS4Gamma13;
QS4s13eQS4_bandsB13 = QS4Beta13;
QS4s13eQS4_bandsA13 = QS4Alpha13;
QS4s13eQS4_bandsT13 = QS4Theta13;
QS4s13eQS4_bandsD13 = QS4Delta13;
QS4s14eQS4_bandsG14 = QS4Gamma14;
QS4s14eQS4_bandsB14 = QS4Beta14;
QS4s14eQS4_bandsA14 = QS4Alpha14;
QS4s14eQS4_bandsT14 = QS4Theta14;
QS4s14eQS4_bandsD14 = QS4Delta14;
QS4s15eQS4_bandsG15 = QS4Gamma15;
QS4s15eQS4_bandsB15 = QS4Beta15;
QS4s15eQS4_bandsA15 = QS4Alpha15;
QS4s15eQS4_bandsT15 = QS4Theta15;
QS4s15eQS4_bandsD15 = QS4Delta15;
QS4s16eQS4_bandsG16 = QS4Gamma16;
QS4s16eQS4_bandsB16 = QS4Beta16;
QS4s16eQS4_bandsA16 = QS4Alpha16;
QS4s16eQS4_bandsT16 = QS4Theta16;
QS4s16eQS4_bandsD16 = QS4Delta16;
QS4s17eQS4_bandsG17 = QS4Gamma17;
QS4s17eQS4_bandsB17 = QS4Beta17;
QS4s17eQS4_bandsA17 = QS4Alpha17;
QS4s17eQS4_bandsT17 = QS4Theta17;
QS4s17eQS4_bandsD17 = QS4Delta17;
QS4s18eQS4_bandsG18 = QS4Gamma18;
QS4s18eQS4_bandsB18 = QS4Beta18;
QS4s18eQS4_bandsA18 = QS4Alpha18;
QS4s18eQS4_bandsT18 = QS4Theta18;
QS4s18eQS4_bandsD18 = QS4Delta18;
QS4s19eQS4_bandsG19 = QS4Gamma19;
QS4s19eQS4_bandsB19 = QS4Beta19;
QS4s19eQS4_bandsA19 = QS4Alpha19;
QS4s19eQS4_bandsT19 = QS4Theta19;
QS4s19eQS4_bandsD19 = QS4Delta19;
QS4extFP1G1=melcepst(QS4s1eQS4_bandsG1,125,'M',12,14,1024,93);
QS4extFP1B1=melcepst(QS4s1eQS4_bandsB1,125,'M',12,14,1024,93);
QS4extFP1A1=melcepst(QS4s1eQS4_bandsA1,125,'M',12,14,1024,93);
QS4extFP1T1=melcepst(QS4s1eQS4_bandsT1,125,'M',12,14,1024,93);
QS4extFP1D1=melcepst(QS4s1eQS4_bandsD1,125,'M',12,14,1024,93);
			 
QS4extFP2G2=melcepst(QS4s2eQS4_bandsG2,125,'M',12,14,1024,93);
QS4extFP2B2=melcepst(QS4s2eQS4_bandsB2,125,'M',12,14,1024,93);
QS4extFP2A2=melcepst(QS4s2eQS4_bandsA2,125,'M',12,14,1024,93);
QS4extFP2T2=melcepst(QS4s2eQS4_bandsT2,125,'M',12,14,1024,93);
QS4extFP2D2=melcepst(QS4s2eQS4_bandsD2,125,'M',12,14,1024,93);
			   
QS4extFP3G3=melcepst(QS4s3eQS4_bandsG3,125,'M',12,14,1024,93);
QS4extFP3B3=melcepst(QS4s3eQS4_bandsB3,125,'M',12,14,1024,93);
QS4extFP3A3=melcepst(QS4s3eQS4_bandsA3,125,'M',12,14,1024,93);
QS4extFP3T3=melcepst(QS4s3eQS4_bandsT3,125,'M',12,14,1024,93);
QS4extFP3D3=melcepst(QS4s3eQS4_bandsD3,125,'M',12,14,1024,93);
			   
QS4extFP4G4=melcepst(QS4s4eQS4_bandsG4,125,'M',12,14,1024,93);
QS4extFP4B4=melcepst(QS4s4eQS4_bandsB4,125,'M',12,14,1024,93);
QS4extFP4A4=melcepst(QS4s4eQS4_bandsA4,125,'M',12,14,1024,93);
QS4extFP4T4=melcepst(QS4s4eQS4_bandsT4,125,'M',12,14,1024,93);
QS4extFP4D4=melcepst(QS4s4eQS4_bandsD4,125,'M',12,14,1024,93);
QS4extFP5G5=melcepst(QS4s5eQS4_bandsG5,125,'M',12,14,1024,93);
QS4extFP5B5=melcepst(QS4s5eQS4_bandsB5,125,'M',12,14,1024,93);
QS4extFP5A5=melcepst(QS4s5eQS4_bandsA5,125,'M',12,14,1024,93);
QS4extFP5T5=melcepst(QS4s5eQS4_bandsT5,125,'M',12,14,1024,93);
QS4extFP5D5=melcepst(QS4s5eQS4_bandsD5,125,'M',12,14,1024,93);
QS4extFP6G6=melcepst(QS4s6eQS4_bandsG6,125,'M',12,14,1024,93);
QS4extFP6B6=melcepst(QS4s6eQS4_bandsB6,125,'M',12,14,1024,93);
QS4extFP6A6=melcepst(QS4s6eQS4_bandsA6,125,'M',12,14,1024,93);
QS4extFP6T6=melcepst(QS4s6eQS4_bandsT6,125,'M',12,14,1024,93);
QS4extFP6D6=melcepst(QS4s6eQS4_bandsD6,125,'M',12,14,1024,93);
QS4extFP7G7=melcepst(QS4s7eQS4_bandsG7,125,'M',12,14,1024,93);
QS4extFP7B7=melcepst(QS4s7eQS4_bandsB7,125,'M',12,14,1024,93);
QS4extFP7A7=melcepst(QS4s7eQS4_bandsA7,125,'M',12,14,1024,93);
QS4extFP7T7=melcepst(QS4s7eQS4_bandsT7,125,'M',12,14,1024,93);
QS4extFP7D7=melcepst(QS4s7eQS4_bandsD7,125,'M',12,14,1024,93);
QS4extFP8G8=melcepst(QS4s8eQS4_bandsG8,125,'M',12,14,1024,93);
QS4extFP8B8=melcepst(QS4s8eQS4_bandsB8,125,'M',12,14,1024,93);
QS4extFP8A8=melcepst(QS4s8eQS4_bandsA8,125,'M',12,14,1024,93);
QS4extFP8T8=melcepst(QS4s8eQS4_bandsT8,125,'M',12,14,1024,93);
QS4extFP8D8=melcepst(QS4s8eQS4_bandsD8,125,'M',12,14,1024,93);
QS4extFP9G9=melcepst(QS4s9eQS4_bandsG9,125,'M',12,14,1024,93);
QS4extFP9B9=melcepst(QS4s9eQS4_bandsB9,125,'M',12,14,1024,93);
QS4extFP9A9=melcepst(QS4s9eQS4_bandsA9,125,'M',12,14,1024,93);
QS4extFP9T9=melcepst(QS4s9eQS4_bandsT9,125,'M',12,14,1024,93);
QS4extFP9D9=melcepst(QS4s9eQS4_bandsD9,125,'M',12,14,1024,93);
QS4extFP10G10=melcepst(QS4s10eQS4_bandsG10,125,'M',12,14,1024,93);
QS4extFP10B10=melcepst(QS4s10eQS4_bandsB10,125,'M',12,14,1024,93);
QS4extFP10A10=melcepst(QS4s10eQS4_bandsA10,125,'M',12,14,1024,93);
QS4extFP10T10=melcepst(QS4s10eQS4_bandsT10,125,'M',12,14,1024,93);
QS4extFP10D10=melcepst(QS4s10eQS4_bandsD10,125,'M',12,14,1024,93);
QS4extFP11G11=melcepst(QS4s11eQS4_bandsG11,125,'M',12,14,1024,93);
QS4extFP11B11=melcepst(QS4s11eQS4_bandsB11,125,'M',12,14,1024,93);
QS4extFP11A11=melcepst(QS4s11eQS4_bandsA11,125,'M',12,14,1024,93);
QS4extFP11T11=melcepst(QS4s11eQS4_bandsT11,125,'M',12,14,1024,93);
QS4extFP11D11=melcepst(QS4s11eQS4_bandsD11,125,'M',12,14,1024,93);
QS4extFP12G12=melcepst(QS4s12eQS4_bandsG12,125,'M',12,14,1024,93);
QS4extFP12B12=melcepst(QS4s12eQS4_bandsB12,125,'M',12,14,1024,93);
QS4extFP12A12=melcepst(QS4s12eQS4_bandsA12,125,'M',12,14,1024,93);
QS4extFP12T12=melcepst(QS4s12eQS4_bandsT12,125,'M',12,14,1024,93);
QS4extFP12D12=melcepst(QS4s12eQS4_bandsD12,125,'M',12,14,1024,93);
QS4extFP13G13=melcepst(QS4s13eQS4_bandsG13,125,'M',12,14,1024,93);
QS4extFP13B13=melcepst(QS4s13eQS4_bandsB13,125,'M',12,14,1024,93);
QS4extFP13A13=melcepst(QS4s13eQS4_bandsA13,125,'M',12,14,1024,93);
QS4extFP13T13=melcepst(QS4s13eQS4_bandsT13,125,'M',12,14,1024,93);
QS4extFP13D13=melcepst(QS4s13eQS4_bandsD13,125,'M',12,14,1024,93);
QS4extFP14G14=melcepst(QS4s14eQS4_bandsG14,125,'M',12,14,1024,93);
QS4extFP14B14=melcepst(QS4s14eQS4_bandsB14,125,'M',12,14,1024,93);
QS4extFP14A14=melcepst(QS4s14eQS4_bandsA14,125,'M',12,14,1024,93);
QS4extFP14T14=melcepst(QS4s14eQS4_bandsT14,125,'M',12,14,1024,93);
QS4extFP14D14=melcepst(QS4s14eQS4_bandsD14,125,'M',12,14,1024,93);
QS4extFP15G15=melcepst(QS4s15eQS4_bandsG15,125,'M',12,14,1024,93);
QS4extFP15B15=melcepst(QS4s15eQS4_bandsB15,125,'M',12,14,1024,93);
QS4extFP15A15=melcepst(QS4s15eQS4_bandsA15,125,'M',12,14,1024,93);
QS4extFP15T15=melcepst(QS4s15eQS4_bandsT15,125,'M',12,14,1024,93);
QS4extFP15D15=melcepst(QS4s15eQS4_bandsD15,125,'M',12,14,1024,93);
QS4extFP16G16=melcepst(QS4s16eQS4_bandsG16,125,'M',12,14,1024,93);
QS4extFP16B16=melcepst(QS4s16eQS4_bandsB16,125,'M',12,14,1024,93);
QS4extFP16A16=melcepst(QS4s16eQS4_bandsA16,125,'M',12,14,1024,93);
QS4extFP16T16=melcepst(QS4s16eQS4_bandsT16,125,'M',12,14,1024,93);
QS4extFP16D16=melcepst(QS4s16eQS4_bandsD16,125,'M',12,14,1024,93);
QS4extFP17G17=melcepst(QS4s17eQS4_bandsG17,125,'M',12,14,1024,93);
QS4extFP17B17=melcepst(QS4s17eQS4_bandsB17,125,'M',12,14,1024,93);
QS4extFP17A17=melcepst(QS4s17eQS4_bandsA17,125,'M',12,14,1024,93);
QS4extFP17T17=melcepst(QS4s17eQS4_bandsT17,125,'M',12,14,1024,93);
QS4extFP17D17=melcepst(QS4s17eQS4_bandsD17,125,'M',12,14,1024,93);
QS4extFP18G18=melcepst(QS4s18eQS4_bandsG18,125,'M',12,14,1024,93);
QS4extFP18B18=melcepst(QS4s18eQS4_bandsB18,125,'M',12,14,1024,93);
QS4extFP18A18=melcepst(QS4s18eQS4_bandsA18,125,'M',12,14,1024,93);
QS4extFP18T18=melcepst(QS4s18eQS4_bandsT18,125,'M',12,14,1024,93);
QS4extFP18D18=melcepst(QS4s18eQS4_bandsD18,125,'M',12,14,1024,93);
QS4extFP19G19=melcepst(QS4s19eQS4_bandsG19,125,'M',12,14,1024,93);
QS4extFP19B19=melcepst(QS4s19eQS4_bandsB19,125,'M',12,14,1024,93);
QS4extFP19A19=melcepst(QS4s19eQS4_bandsA19,125,'M',12,14,1024,93);
QS4extFP19T19=melcepst(QS4s19eQS4_bandsT19,125,'M',12,14,1024,93);
QS4extFP19D19=melcepst(QS4s19eQS4_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS4AALPHA = [QS4extFP1A1;QS4extFP2A2;QS4extFP3A3; QS4extFP4A4;QS4extFP5A5;QS4extFP6A6;QS4extFP7A7;QS4extFP8A8;QS4extFP9A9;QS4extFP10A10;QS4extFP11A11;QS4extFP12A12;QS4extFP13A13;QS4extFP14A14;QS4extFP15A15;QS4extFP16A16;QS4extFP17A17;QS4extFP18A18;QS4extFP19A19];


%%set expected output


QS4AALPHA(:,13)=0;
QS4AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS4AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS4AALPHA(:,1:12); 
tgtestS=QS4AALPHA(:,13:14);


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
