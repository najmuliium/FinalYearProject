%% Load the dataset 

QS8  = readtable("QS8.csv");

%Delete time table
QS8=QS8(:,2:20);
%% Question 1 data

QS8FP1 = table2array(QS8(:,1));
QS8FP2 = table2array(QS8(:,2));
QS8F3  = table2array(QS8(:,3));
QS8F4  = table2array(QS8(:,4));
QS8F7  = table2array(QS8(:,5));
QS8F8  = table2array(QS8(:,6));
QS8C3  = table2array(QS8(:,7));
QS8C4  = table2array(QS8(:,8));
QS8T7  = table2array(QS8(:,9));
QS8T8  = table2array(QS8(:,10));
QS8P3  = table2array(QS8(:,11));
QS8P4  = table2array(QS8(:,12));
QS8P7  = table2array(QS8(:,13));
QS8P8  = table2array(QS8(:,14));
QS8O1  = table2array(QS8(:,15));
QS8O2  = table2array(QS8(:,16));
QS8Fz  = table2array(QS8(:,17));
QS8Cz  = table2array(QS8(:,18));
QS8Pz  = table2array(QS8(:,19));

%% Splitband for QS8 

[QS8Gamma1,QS8Beta1,QS8Alpha1,QS8Theta1,QS8Delta1, QS8Sig0601] = splitband(QS8FP1);
[QS8Gamma2,QS8Beta2,QS8Alpha2,QS8Theta2,QS8Delta2, QS8Sig0602] = splitband(QS8FP2);
[QS8Gamma3,QS8Beta3,QS8Alpha3,QS8Theta3,QS8Delta3, QS8Sig0603] = splitband(QS8F3);
[QS8Gamma4,QS8Beta4,QS8Alpha4,QS8Theta4,QS8Delta4, QS8Sig0604] = splitband(QS8F4);
[QS8Gamma5,QS8Beta5,QS8Alpha5,QS8Theta5,QS8Delta5, QS8Sig0605] = splitband(QS8F7);
[QS8Gamma6,QS8Beta6,QS8Alpha6,QS8Theta6,QS8Delta6, QS8Sig0606] = splitband(QS8F8);
[QS8Gamma7,QS8Beta7,QS8Alpha7,QS8Theta7,QS8Delta7, QS8Sig0607] = splitband(QS8C3);
[QS8Gamma8,QS8Beta8,QS8Alpha8,QS8Theta8,QS8Delta8, QS8Sig0608] = splitband(QS8C4);
[QS8Gamma9,QS8Beta9,QS8Alpha9,QS8Theta9,QS8Delta9, QS8Sig0609] = splitband(QS8T7);
[QS8Gamma10,QS8Beta10,QS8Alpha10,QS8Theta10,QS8Delta10, QS8Sig06010] = splitband(QS8T8);
[QS8Gamma11,QS8Beta11,QS8Alpha11,QS8Theta11,QS8Delta11, QS8Sig06011] = splitband(QS8P3);
[QS8Gamma12,QS8Beta12,QS8Alpha12,QS8Theta12,QS8Delta12, QS8Sig06012] = splitband(QS8P4);
[QS8Gamma13,QS8Beta13,QS8Alpha13,QS8Theta13,QS8Delta13, QS8Sig06013] = splitband(QS8P7);
[QS8Gamma14,QS8Beta14,QS8Alpha14,QS8Theta14,QS8Delta14, QS8Sig06014] = splitband(QS8P8);
[QS8Gamma15,QS8Beta15,QS8Alpha15,QS8Theta15,QS8Delta15, QS8Sig06015] = splitband(QS8O1);
[QS8Gamma16,QS8Beta16,QS8Alpha16,QS8Theta16,QS8Delta16, QS8Sig06016] = splitband(QS8O2);
[QS8Gamma17,QS8Beta17,QS8Alpha17,QS8Theta17,QS8Delta17, QS8Sig06017] = splitband(QS8Fz);
[QS8Gamma18,QS8Beta18,QS8Alpha18,QS8Theta18,QS8Delta18, QS8Sig06018] = splitband(QS8Cz);
[QS8Gamma19,QS8Beta19,QS8Alpha19,QS8Theta19,QS8Delta19, QS8Sig06019] = splitband(QS8Pz);


%% feature extraQS8tion for QS8 

QS8s1eQS8_bandsG1 = QS8Gamma1;
QS8s1eQS8_bandsB1 = QS8Beta1;
QS8s1eQS8_bandsA1 = QS8Alpha1;
QS8s1eQS8_bandsT1 = QS8Theta1;
QS8s1eQS8_bandsD1 = QS8Delta1;
QS8s2eQS8_bandsG2 = QS8Gamma2;
QS8s2eQS8_bandsB2 = QS8Beta2;
QS8s2eQS8_bandsA2 = QS8Alpha2;
QS8s2eQS8_bandsT2 = QS8Theta2;
QS8s2eQS8_bandsD2 = QS8Delta2;
QS8s3eQS8_bandsG3 = QS8Gamma3;
QS8s3eQS8_bandsB3 = QS8Beta3;
QS8s3eQS8_bandsA3 = QS8Alpha3;
QS8s3eQS8_bandsT3 = QS8Theta3;
QS8s3eQS8_bandsD3 = QS8Delta3;
QS8s4eQS8_bandsG4 = QS8Gamma4;
QS8s4eQS8_bandsB4 = QS8Beta4;
QS8s4eQS8_bandsA4 = QS8Alpha4;
QS8s4eQS8_bandsT4 = QS8Theta4;
QS8s4eQS8_bandsD4 = QS8Delta4;
QS8s5eQS8_bandsG5 = QS8Gamma5;
QS8s5eQS8_bandsB5 = QS8Beta5;
QS8s5eQS8_bandsA5 = QS8Alpha5;
QS8s5eQS8_bandsT5 = QS8Theta5;
QS8s5eQS8_bandsD5 = QS8Delta5;
QS8s6eQS8_bandsG6 = QS8Gamma6;
QS8s6eQS8_bandsB6 = QS8Beta6;
QS8s6eQS8_bandsA6 = QS8Alpha6;
QS8s6eQS8_bandsT6 = QS8Theta6;
QS8s6eQS8_bandsD6 = QS8Delta6;
QS8s7eQS8_bandsG7 = QS8Gamma7;
QS8s7eQS8_bandsB7 = QS8Beta7;
QS8s7eQS8_bandsA7 = QS8Alpha7;
QS8s7eQS8_bandsT7 = QS8Theta7;
QS8s7eQS8_bandsD7 = QS8Delta7;
QS8s8eQS8_bandsG8 = QS8Gamma8;
QS8s8eQS8_bandsB8 = QS8Beta8;
QS8s8eQS8_bandsA8 = QS8Alpha8;
QS8s8eQS8_bandsT8 = QS8Theta8;
QS8s8eQS8_bandsD8 = QS8Delta8;
QS8s9eQS8_bandsG9 = QS8Gamma9;
QS8s9eQS8_bandsB9 = QS8Beta9;
QS8s9eQS8_bandsA9 = QS8Alpha9;
QS8s9eQS8_bandsT9 = QS8Theta9;
QS8s9eQS8_bandsD9 = QS8Delta9;
QS8s10eQS8_bandsG10 = QS8Gamma10;
QS8s10eQS8_bandsB10 = QS8Beta10;
QS8s10eQS8_bandsA10 = QS8Alpha10;
QS8s10eQS8_bandsT10 = QS8Theta10;
QS8s10eQS8_bandsD10 = QS8Delta10;
QS8s11eQS8_bandsG11 = QS8Gamma11;
QS8s11eQS8_bandsB11 = QS8Beta11;
QS8s11eQS8_bandsA11 = QS8Alpha11;
QS8s11eQS8_bandsT11 = QS8Theta11;
QS8s11eQS8_bandsD11 = QS8Delta11;
QS8s12eQS8_bandsG12 = QS8Gamma12;
QS8s12eQS8_bandsB12 = QS8Beta12;
QS8s12eQS8_bandsA12 = QS8Alpha12;
QS8s12eQS8_bandsT12= QS8Theta12;
QS8s12eQS8_bandsD12 = QS8Delta12;
QS8s13eQS8_bandsG13 = QS8Gamma13;
QS8s13eQS8_bandsB13 = QS8Beta13;
QS8s13eQS8_bandsA13 = QS8Alpha13;
QS8s13eQS8_bandsT13 = QS8Theta13;
QS8s13eQS8_bandsD13 = QS8Delta13;
QS8s14eQS8_bandsG14 = QS8Gamma14;
QS8s14eQS8_bandsB14 = QS8Beta14;
QS8s14eQS8_bandsA14 = QS8Alpha14;
QS8s14eQS8_bandsT14 = QS8Theta14;
QS8s14eQS8_bandsD14 = QS8Delta14;
QS8s15eQS8_bandsG15 = QS8Gamma15;
QS8s15eQS8_bandsB15 = QS8Beta15;
QS8s15eQS8_bandsA15 = QS8Alpha15;
QS8s15eQS8_bandsT15 = QS8Theta15;
QS8s15eQS8_bandsD15 = QS8Delta15;
QS8s16eQS8_bandsG16 = QS8Gamma16;
QS8s16eQS8_bandsB16 = QS8Beta16;
QS8s16eQS8_bandsA16 = QS8Alpha16;
QS8s16eQS8_bandsT16 = QS8Theta16;
QS8s16eQS8_bandsD16 = QS8Delta16;
QS8s17eQS8_bandsG17 = QS8Gamma17;
QS8s17eQS8_bandsB17 = QS8Beta17;
QS8s17eQS8_bandsA17 = QS8Alpha17;
QS8s17eQS8_bandsT17 = QS8Theta17;
QS8s17eQS8_bandsD17 = QS8Delta17;
QS8s18eQS8_bandsG18 = QS8Gamma18;
QS8s18eQS8_bandsB18 = QS8Beta18;
QS8s18eQS8_bandsA18 = QS8Alpha18;
QS8s18eQS8_bandsT18 = QS8Theta18;
QS8s18eQS8_bandsD18 = QS8Delta18;
QS8s19eQS8_bandsG19 = QS8Gamma19;
QS8s19eQS8_bandsB19 = QS8Beta19;
QS8s19eQS8_bandsA19 = QS8Alpha19;
QS8s19eQS8_bandsT19 = QS8Theta19;
QS8s19eQS8_bandsD19 = QS8Delta19;
QS8extFP1G1=melcepst(QS8s1eQS8_bandsG1,125,'M',12,14,1024,93);
QS8extFP1B1=melcepst(QS8s1eQS8_bandsB1,125,'M',12,14,1024,93);
QS8extFP1A1=melcepst(QS8s1eQS8_bandsA1,125,'M',12,14,1024,93);
QS8extFP1T1=melcepst(QS8s1eQS8_bandsT1,125,'M',12,14,1024,93);
QS8extFP1D1=melcepst(QS8s1eQS8_bandsD1,125,'M',12,14,1024,93);
			 
QS8extFP2G2=melcepst(QS8s2eQS8_bandsG2,125,'M',12,14,1024,93);
QS8extFP2B2=melcepst(QS8s2eQS8_bandsB2,125,'M',12,14,1024,93);
QS8extFP2A2=melcepst(QS8s2eQS8_bandsA2,125,'M',12,14,1024,93);
QS8extFP2T2=melcepst(QS8s2eQS8_bandsT2,125,'M',12,14,1024,93);
QS8extFP2D2=melcepst(QS8s2eQS8_bandsD2,125,'M',12,14,1024,93);
			   
QS8extFP3G3=melcepst(QS8s3eQS8_bandsG3,125,'M',12,14,1024,93);
QS8extFP3B3=melcepst(QS8s3eQS8_bandsB3,125,'M',12,14,1024,93);
QS8extFP3A3=melcepst(QS8s3eQS8_bandsA3,125,'M',12,14,1024,93);
QS8extFP3T3=melcepst(QS8s3eQS8_bandsT3,125,'M',12,14,1024,93);
QS8extFP3D3=melcepst(QS8s3eQS8_bandsD3,125,'M',12,14,1024,93);
			   
QS8extFP4G4=melcepst(QS8s4eQS8_bandsG4,125,'M',12,14,1024,93);
QS8extFP4B4=melcepst(QS8s4eQS8_bandsB4,125,'M',12,14,1024,93);
QS8extFP4A4=melcepst(QS8s4eQS8_bandsA4,125,'M',12,14,1024,93);
QS8extFP4T4=melcepst(QS8s4eQS8_bandsT4,125,'M',12,14,1024,93);
QS8extFP4D4=melcepst(QS8s4eQS8_bandsD4,125,'M',12,14,1024,93);
QS8extFP5G5=melcepst(QS8s5eQS8_bandsG5,125,'M',12,14,1024,93);
QS8extFP5B5=melcepst(QS8s5eQS8_bandsB5,125,'M',12,14,1024,93);
QS8extFP5A5=melcepst(QS8s5eQS8_bandsA5,125,'M',12,14,1024,93);
QS8extFP5T5=melcepst(QS8s5eQS8_bandsT5,125,'M',12,14,1024,93);
QS8extFP5D5=melcepst(QS8s5eQS8_bandsD5,125,'M',12,14,1024,93);
QS8extFP6G6=melcepst(QS8s6eQS8_bandsG6,125,'M',12,14,1024,93);
QS8extFP6B6=melcepst(QS8s6eQS8_bandsB6,125,'M',12,14,1024,93);
QS8extFP6A6=melcepst(QS8s6eQS8_bandsA6,125,'M',12,14,1024,93);
QS8extFP6T6=melcepst(QS8s6eQS8_bandsT6,125,'M',12,14,1024,93);
QS8extFP6D6=melcepst(QS8s6eQS8_bandsD6,125,'M',12,14,1024,93);
QS8extFP7G7=melcepst(QS8s7eQS8_bandsG7,125,'M',12,14,1024,93);
QS8extFP7B7=melcepst(QS8s7eQS8_bandsB7,125,'M',12,14,1024,93);
QS8extFP7A7=melcepst(QS8s7eQS8_bandsA7,125,'M',12,14,1024,93);
QS8extFP7T7=melcepst(QS8s7eQS8_bandsT7,125,'M',12,14,1024,93);
QS8extFP7D7=melcepst(QS8s7eQS8_bandsD7,125,'M',12,14,1024,93);
QS8extFP8G8=melcepst(QS8s8eQS8_bandsG8,125,'M',12,14,1024,93);
QS8extFP8B8=melcepst(QS8s8eQS8_bandsB8,125,'M',12,14,1024,93);
QS8extFP8A8=melcepst(QS8s8eQS8_bandsA8,125,'M',12,14,1024,93);
QS8extFP8T8=melcepst(QS8s8eQS8_bandsT8,125,'M',12,14,1024,93);
QS8extFP8D8=melcepst(QS8s8eQS8_bandsD8,125,'M',12,14,1024,93);
QS8extFP9G9=melcepst(QS8s9eQS8_bandsG9,125,'M',12,14,1024,93);
QS8extFP9B9=melcepst(QS8s9eQS8_bandsB9,125,'M',12,14,1024,93);
QS8extFP9A9=melcepst(QS8s9eQS8_bandsA9,125,'M',12,14,1024,93);
QS8extFP9T9=melcepst(QS8s9eQS8_bandsT9,125,'M',12,14,1024,93);
QS8extFP9D9=melcepst(QS8s9eQS8_bandsD9,125,'M',12,14,1024,93);
QS8extFP10G10=melcepst(QS8s10eQS8_bandsG10,125,'M',12,14,1024,93);
QS8extFP10B10=melcepst(QS8s10eQS8_bandsB10,125,'M',12,14,1024,93);
QS8extFP10A10=melcepst(QS8s10eQS8_bandsA10,125,'M',12,14,1024,93);
QS8extFP10T10=melcepst(QS8s10eQS8_bandsT10,125,'M',12,14,1024,93);
QS8extFP10D10=melcepst(QS8s10eQS8_bandsD10,125,'M',12,14,1024,93);
QS8extFP11G11=melcepst(QS8s11eQS8_bandsG11,125,'M',12,14,1024,93);
QS8extFP11B11=melcepst(QS8s11eQS8_bandsB11,125,'M',12,14,1024,93);
QS8extFP11A11=melcepst(QS8s11eQS8_bandsA11,125,'M',12,14,1024,93);
QS8extFP11T11=melcepst(QS8s11eQS8_bandsT11,125,'M',12,14,1024,93);
QS8extFP11D11=melcepst(QS8s11eQS8_bandsD11,125,'M',12,14,1024,93);
QS8extFP12G12=melcepst(QS8s12eQS8_bandsG12,125,'M',12,14,1024,93);
QS8extFP12B12=melcepst(QS8s12eQS8_bandsB12,125,'M',12,14,1024,93);
QS8extFP12A12=melcepst(QS8s12eQS8_bandsA12,125,'M',12,14,1024,93);
QS8extFP12T12=melcepst(QS8s12eQS8_bandsT12,125,'M',12,14,1024,93);
QS8extFP12D12=melcepst(QS8s12eQS8_bandsD12,125,'M',12,14,1024,93);
QS8extFP13G13=melcepst(QS8s13eQS8_bandsG13,125,'M',12,14,1024,93);
QS8extFP13B13=melcepst(QS8s13eQS8_bandsB13,125,'M',12,14,1024,93);
QS8extFP13A13=melcepst(QS8s13eQS8_bandsA13,125,'M',12,14,1024,93);
QS8extFP13T13=melcepst(QS8s13eQS8_bandsT13,125,'M',12,14,1024,93);
QS8extFP13D13=melcepst(QS8s13eQS8_bandsD13,125,'M',12,14,1024,93);
QS8extFP14G14=melcepst(QS8s14eQS8_bandsG14,125,'M',12,14,1024,93);
QS8extFP14B14=melcepst(QS8s14eQS8_bandsB14,125,'M',12,14,1024,93);
QS8extFP14A14=melcepst(QS8s14eQS8_bandsA14,125,'M',12,14,1024,93);
QS8extFP14T14=melcepst(QS8s14eQS8_bandsT14,125,'M',12,14,1024,93);
QS8extFP14D14=melcepst(QS8s14eQS8_bandsD14,125,'M',12,14,1024,93);
QS8extFP15G15=melcepst(QS8s15eQS8_bandsG15,125,'M',12,14,1024,93);
QS8extFP15B15=melcepst(QS8s15eQS8_bandsB15,125,'M',12,14,1024,93);
QS8extFP15A15=melcepst(QS8s15eQS8_bandsA15,125,'M',12,14,1024,93);
QS8extFP15T15=melcepst(QS8s15eQS8_bandsT15,125,'M',12,14,1024,93);
QS8extFP15D15=melcepst(QS8s15eQS8_bandsD15,125,'M',12,14,1024,93);
QS8extFP16G16=melcepst(QS8s16eQS8_bandsG16,125,'M',12,14,1024,93);
QS8extFP16B16=melcepst(QS8s16eQS8_bandsB16,125,'M',12,14,1024,93);
QS8extFP16A16=melcepst(QS8s16eQS8_bandsA16,125,'M',12,14,1024,93);
QS8extFP16T16=melcepst(QS8s16eQS8_bandsT16,125,'M',12,14,1024,93);
QS8extFP16D16=melcepst(QS8s16eQS8_bandsD16,125,'M',12,14,1024,93);
QS8extFP17G17=melcepst(QS8s17eQS8_bandsG17,125,'M',12,14,1024,93);
QS8extFP17B17=melcepst(QS8s17eQS8_bandsB17,125,'M',12,14,1024,93);
QS8extFP17A17=melcepst(QS8s17eQS8_bandsA17,125,'M',12,14,1024,93);
QS8extFP17T17=melcepst(QS8s17eQS8_bandsT17,125,'M',12,14,1024,93);
QS8extFP17D17=melcepst(QS8s17eQS8_bandsD17,125,'M',12,14,1024,93);
QS8extFP18G18=melcepst(QS8s18eQS8_bandsG18,125,'M',12,14,1024,93);
QS8extFP18B18=melcepst(QS8s18eQS8_bandsB18,125,'M',12,14,1024,93);
QS8extFP18A18=melcepst(QS8s18eQS8_bandsA18,125,'M',12,14,1024,93);
QS8extFP18T18=melcepst(QS8s18eQS8_bandsT18,125,'M',12,14,1024,93);
QS8extFP18D18=melcepst(QS8s18eQS8_bandsD18,125,'M',12,14,1024,93);
QS8extFP19G19=melcepst(QS8s19eQS8_bandsG19,125,'M',12,14,1024,93);
QS8extFP19B19=melcepst(QS8s19eQS8_bandsB19,125,'M',12,14,1024,93);
QS8extFP19A19=melcepst(QS8s19eQS8_bandsA19,125,'M',12,14,1024,93);
QS8extFP19T19=melcepst(QS8s19eQS8_bandsT19,125,'M',12,14,1024,93);
QS8extFP19D19=melcepst(QS8s19eQS8_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS8AALPHA = [QS8extFP1A1;QS8extFP2A2;QS8extFP3A3; QS8extFP4A4;QS8extFP5A5;QS8extFP6A6;QS8extFP7A7;QS8extFP8A8;QS8extFP9A9;QS8extFP10A10;QS8extFP11A11;QS8extFP12A12;QS8extFP13A13;QS8extFP14A14;QS8extFP15A15;QS8extFP16A16;QS8extFP17A17;QS8extFP18A18;QS8extFP19A19];


%%set expected output


QS8AALPHA(:,13)=0;
QS8AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS8AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS8AALPHA(:,1:12); 
tgtestS=QS8AALPHA(:,13:14);


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
