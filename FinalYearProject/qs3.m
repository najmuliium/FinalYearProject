%% Load the dataset 

QS3  = readtable("QS3.csv");

%Delete time table
QS3=QS3(:,2:20);
%% Question 1 data

QS3FP1 = table2array(QS3(:,1));
QS3FP2 = table2array(QS3(:,2));
QS3F3  = table2array(QS3(:,3));
QS3F4  = table2array(QS3(:,4));
QS3F7  = table2array(QS3(:,5));
QS3F8  = table2array(QS3(:,6));
QS3C3  = table2array(QS3(:,7));
QS3C4  = table2array(QS3(:,8));
QS3T7  = table2array(QS3(:,9));
QS3T8  = table2array(QS3(:,10));
QS3P3  = table2array(QS3(:,11));
QS3P4  = table2array(QS3(:,12));
QS3P7  = table2array(QS3(:,13));
QS3P8  = table2array(QS3(:,14));
QS3O1  = table2array(QS3(:,15));
QS3O2  = table2array(QS3(:,16));
QS3Fz  = table2array(QS3(:,17));
QS3Cz  = table2array(QS3(:,18));
QS3Pz  = table2array(QS3(:,19));

%% Splitband for QS3 

[QS3Gamma1,QS3Beta1,QS3Alpha1,QS3Theta1,QS3Delta1, QS3Sig0601] = splitband(QS3FP1);
[QS3Gamma2,QS3Beta2,QS3Alpha2,QS3Theta2,QS3Delta2, QS3Sig0602] = splitband(QS3FP2);
[QS3Gamma3,QS3Beta3,QS3Alpha3,QS3Theta3,QS3Delta3, QS3Sig0603] = splitband(QS3F3);
[QS3Gamma4,QS3Beta4,QS3Alpha4,QS3Theta4,QS3Delta4, QS3Sig0604] = splitband(QS3F4);
[QS3Gamma5,QS3Beta5,QS3Alpha5,QS3Theta5,QS3Delta5, QS3Sig0605] = splitband(QS3F7);
[QS3Gamma6,QS3Beta6,QS3Alpha6,QS3Theta6,QS3Delta6, QS3Sig0606] = splitband(QS3F8);
[QS3Gamma7,QS3Beta7,QS3Alpha7,QS3Theta7,QS3Delta7, QS3Sig0607] = splitband(QS3C3);
[QS3Gamma8,QS3Beta8,QS3Alpha8,QS3Theta8,QS3Delta8, QS3Sig0608] = splitband(QS3C4);
[QS3Gamma9,QS3Beta9,QS3Alpha9,QS3Theta9,QS3Delta9, QS3Sig0609] = splitband(QS3T7);
[QS3Gamma10,QS3Beta10,QS3Alpha10,QS3Theta10,QS3Delta10, QS3Sig06010] = splitband(QS3T8);
[QS3Gamma11,QS3Beta11,QS3Alpha11,QS3Theta11,QS3Delta11, QS3Sig06011] = splitband(QS3P3);
[QS3Gamma12,QS3Beta12,QS3Alpha12,QS3Theta12,QS3Delta12, QS3Sig06012] = splitband(QS3P4);
[QS3Gamma13,QS3Beta13,QS3Alpha13,QS3Theta13,QS3Delta13, QS3Sig06013] = splitband(QS3P7);
[QS3Gamma14,QS3Beta14,QS3Alpha14,QS3Theta14,QS3Delta14, QS3Sig06014] = splitband(QS3P8);
[QS3Gamma15,QS3Beta15,QS3Alpha15,QS3Theta15,QS3Delta15, QS3Sig06015] = splitband(QS3O1);
[QS3Gamma16,QS3Beta16,QS3Alpha16,QS3Theta16,QS3Delta16, QS3Sig06016] = splitband(QS3O2);
[QS3Gamma17,QS3Beta17,QS3Alpha17,QS3Theta17,QS3Delta17, QS3Sig06017] = splitband(QS3Fz);
[QS3Gamma18,QS3Beta18,QS3Alpha18,QS3Theta18,QS3Delta18, QS3Sig06018] = splitband(QS3Cz);
[QS3Gamma19,QS3Beta19,QS3Alpha19,QS3Theta19,QS3Delta19, QS3Sig06019] = splitband(QS3Pz);


%% feature extraQS3tion for QS3 

QS3s1eQS3_bandsG1 = QS3Gamma1;
QS3s1eQS3_bandsB1 = QS3Beta1;
QS3s1eQS3_bandsA1 = QS3Alpha1;
QS3s1eQS3_bandsT1 = QS3Theta1;
QS3s1eQS3_bandsD1 = QS3Delta1;
QS3s2eQS3_bandsG2 = QS3Gamma2;
QS3s2eQS3_bandsB2 = QS3Beta2;
QS3s2eQS3_bandsA2 = QS3Alpha2;
QS3s2eQS3_bandsT2 = QS3Theta2;
QS3s2eQS3_bandsD2 = QS3Delta2;
QS3s3eQS3_bandsG3 = QS3Gamma3;
QS3s3eQS3_bandsB3 = QS3Beta3;
QS3s3eQS3_bandsA3 = QS3Alpha3;
QS3s3eQS3_bandsT3 = QS3Theta3;
QS3s3eQS3_bandsD3 = QS3Delta3;
QS3s4eQS3_bandsG4 = QS3Gamma4;
QS3s4eQS3_bandsB4 = QS3Beta4;
QS3s4eQS3_bandsA4 = QS3Alpha4;
QS3s4eQS3_bandsT4 = QS3Theta4;
QS3s4eQS3_bandsD4 = QS3Delta4;
QS3s5eQS3_bandsG5 = QS3Gamma5;
QS3s5eQS3_bandsB5 = QS3Beta5;
QS3s5eQS3_bandsA5 = QS3Alpha5;
QS3s5eQS3_bandsT5 = QS3Theta5;
QS3s5eQS3_bandsD5 = QS3Delta5;
QS3s6eQS3_bandsG6 = QS3Gamma6;
QS3s6eQS3_bandsB6 = QS3Beta6;
QS3s6eQS3_bandsA6 = QS3Alpha6;
QS3s6eQS3_bandsT6 = QS3Theta6;
QS3s6eQS3_bandsD6 = QS3Delta6;
QS3s7eQS3_bandsG7 = QS3Gamma7;
QS3s7eQS3_bandsB7 = QS3Beta7;
QS3s7eQS3_bandsA7 = QS3Alpha7;
QS3s7eQS3_bandsT7 = QS3Theta7;
QS3s7eQS3_bandsD7 = QS3Delta7;
QS3s8eQS3_bandsG8 = QS3Gamma8;
QS3s8eQS3_bandsB8 = QS3Beta8;
QS3s8eQS3_bandsA8 = QS3Alpha8;
QS3s8eQS3_bandsT8 = QS3Theta8;
QS3s8eQS3_bandsD8 = QS3Delta8;
QS3s9eQS3_bandsG9 = QS3Gamma9;
QS3s9eQS3_bandsB9 = QS3Beta9;
QS3s9eQS3_bandsA9 = QS3Alpha9;
QS3s9eQS3_bandsT9 = QS3Theta9;
QS3s9eQS3_bandsD9 = QS3Delta9;
QS3s10eQS3_bandsG10 = QS3Gamma10;
QS3s10eQS3_bandsB10 = QS3Beta10;
QS3s10eQS3_bandsA10 = QS3Alpha10;
QS3s10eQS3_bandsT10 = QS3Theta10;
QS3s10eQS3_bandsD10 = QS3Delta10;
QS3s11eQS3_bandsG11 = QS3Gamma11;
QS3s11eQS3_bandsB11 = QS3Beta11;
QS3s11eQS3_bandsA11 = QS3Alpha11;
QS3s11eQS3_bandsT11 = QS3Theta11;
QS3s11eQS3_bandsD11 = QS3Delta11;
QS3s12eQS3_bandsG12 = QS3Gamma12;
QS3s12eQS3_bandsB12 = QS3Beta12;
QS3s12eQS3_bandsA12 = QS3Alpha12;
QS3s12eQS3_bandsT12= QS3Theta12;
QS3s12eQS3_bandsD12 = QS3Delta12;
QS3s13eQS3_bandsG13 = QS3Gamma13;
QS3s13eQS3_bandsB13 = QS3Beta13;
QS3s13eQS3_bandsA13 = QS3Alpha13;
QS3s13eQS3_bandsT13 = QS3Theta13;
QS3s13eQS3_bandsD13 = QS3Delta13;
QS3s14eQS3_bandsG14 = QS3Gamma14;
QS3s14eQS3_bandsB14 = QS3Beta14;
QS3s14eQS3_bandsA14 = QS3Alpha14;
QS3s14eQS3_bandsT14 = QS3Theta14;
QS3s14eQS3_bandsD14 = QS3Delta14;
QS3s15eQS3_bandsG15 = QS3Gamma15;
QS3s15eQS3_bandsB15 = QS3Beta15;
QS3s15eQS3_bandsA15 = QS3Alpha15;
QS3s15eQS3_bandsT15 = QS3Theta15;
QS3s15eQS3_bandsD15 = QS3Delta15;
QS3s16eQS3_bandsG16 = QS3Gamma16;
QS3s16eQS3_bandsB16 = QS3Beta16;
QS3s16eQS3_bandsA16 = QS3Alpha16;
QS3s16eQS3_bandsT16 = QS3Theta16;
QS3s16eQS3_bandsD16 = QS3Delta16;
QS3s17eQS3_bandsG17 = QS3Gamma17;
QS3s17eQS3_bandsB17 = QS3Beta17;
QS3s17eQS3_bandsA17 = QS3Alpha17;
QS3s17eQS3_bandsT17 = QS3Theta17;
QS3s17eQS3_bandsD17 = QS3Delta17;
QS3s18eQS3_bandsG18 = QS3Gamma18;
QS3s18eQS3_bandsB18 = QS3Beta18;
QS3s18eQS3_bandsA18 = QS3Alpha18;
QS3s18eQS3_bandsT18 = QS3Theta18;
QS3s18eQS3_bandsD18 = QS3Delta18;
QS3s19eQS3_bandsG19 = QS3Gamma19;
QS3s19eQS3_bandsB19 = QS3Beta19;
QS3s19eQS3_bandsA19 = QS3Alpha19;
QS3s19eQS3_bandsT19 = QS3Theta19;
QS3s19eQS3_bandsD19 = QS3Delta19;
QS3extFP1G1=melcepst(QS3s1eQS3_bandsG1,125,'M',12,14,1024,93);
QS3extFP1B1=melcepst(QS3s1eQS3_bandsB1,125,'M',12,14,1024,93);
QS3extFP1A1=melcepst(QS3s1eQS3_bandsA1,125,'M',12,14,1024,93);
QS3extFP1T1=melcepst(QS3s1eQS3_bandsT1,125,'M',12,14,1024,93);
QS3extFP1D1=melcepst(QS3s1eQS3_bandsD1,125,'M',12,14,1024,93);
			 
QS3extFP2G2=melcepst(QS3s2eQS3_bandsG2,125,'M',12,14,1024,93);
QS3extFP2B2=melcepst(QS3s2eQS3_bandsB2,125,'M',12,14,1024,93);
QS3extFP2A2=melcepst(QS3s2eQS3_bandsA2,125,'M',12,14,1024,93);
QS3extFP2T2=melcepst(QS3s2eQS3_bandsT2,125,'M',12,14,1024,93);
QS3extFP2D2=melcepst(QS3s2eQS3_bandsD2,125,'M',12,14,1024,93);
			   
QS3extFP3G3=melcepst(QS3s3eQS3_bandsG3,125,'M',12,14,1024,93);
QS3extFP3B3=melcepst(QS3s3eQS3_bandsB3,125,'M',12,14,1024,93);
QS3extFP3A3=melcepst(QS3s3eQS3_bandsA3,125,'M',12,14,1024,93);
QS3extFP3T3=melcepst(QS3s3eQS3_bandsT3,125,'M',12,14,1024,93);
QS3extFP3D3=melcepst(QS3s3eQS3_bandsD3,125,'M',12,14,1024,93);
			   
QS3extFP4G4=melcepst(QS3s4eQS3_bandsG4,125,'M',12,14,1024,93);
QS3extFP4B4=melcepst(QS3s4eQS3_bandsB4,125,'M',12,14,1024,93);
QS3extFP4A4=melcepst(QS3s4eQS3_bandsA4,125,'M',12,14,1024,93);
QS3extFP4T4=melcepst(QS3s4eQS3_bandsT4,125,'M',12,14,1024,93);
QS3extFP4D4=melcepst(QS3s4eQS3_bandsD4,125,'M',12,14,1024,93);
QS3extFP5G5=melcepst(QS3s5eQS3_bandsG5,125,'M',12,14,1024,93);
QS3extFP5B5=melcepst(QS3s5eQS3_bandsB5,125,'M',12,14,1024,93);
QS3extFP5A5=melcepst(QS3s5eQS3_bandsA5,125,'M',12,14,1024,93);
QS3extFP5T5=melcepst(QS3s5eQS3_bandsT5,125,'M',12,14,1024,93);
QS3extFP5D5=melcepst(QS3s5eQS3_bandsD5,125,'M',12,14,1024,93);
QS3extFP6G6=melcepst(QS3s6eQS3_bandsG6,125,'M',12,14,1024,93);
QS3extFP6B6=melcepst(QS3s6eQS3_bandsB6,125,'M',12,14,1024,93);
QS3extFP6A6=melcepst(QS3s6eQS3_bandsA6,125,'M',12,14,1024,93);
QS3extFP6T6=melcepst(QS3s6eQS3_bandsT6,125,'M',12,14,1024,93);
QS3extFP6D6=melcepst(QS3s6eQS3_bandsD6,125,'M',12,14,1024,93);
QS3extFP7G7=melcepst(QS3s7eQS3_bandsG7,125,'M',12,14,1024,93);
QS3extFP7B7=melcepst(QS3s7eQS3_bandsB7,125,'M',12,14,1024,93);
QS3extFP7A7=melcepst(QS3s7eQS3_bandsA7,125,'M',12,14,1024,93);
QS3extFP7T7=melcepst(QS3s7eQS3_bandsT7,125,'M',12,14,1024,93);
QS3extFP7D7=melcepst(QS3s7eQS3_bandsD7,125,'M',12,14,1024,93);
QS3extFP8G8=melcepst(QS3s8eQS3_bandsG8,125,'M',12,14,1024,93);
QS3extFP8B8=melcepst(QS3s8eQS3_bandsB8,125,'M',12,14,1024,93);
QS3extFP8A8=melcepst(QS3s8eQS3_bandsA8,125,'M',12,14,1024,93);
QS3extFP8T8=melcepst(QS3s8eQS3_bandsT8,125,'M',12,14,1024,93);
QS3extFP8D8=melcepst(QS3s8eQS3_bandsD8,125,'M',12,14,1024,93);
QS3extFP9G9=melcepst(QS3s9eQS3_bandsG9,125,'M',12,14,1024,93);
QS3extFP9B9=melcepst(QS3s9eQS3_bandsB9,125,'M',12,14,1024,93);
QS3extFP9A9=melcepst(QS3s9eQS3_bandsA9,125,'M',12,14,1024,93);
QS3extFP9T9=melcepst(QS3s9eQS3_bandsT9,125,'M',12,14,1024,93);
QS3extFP9D9=melcepst(QS3s9eQS3_bandsD9,125,'M',12,14,1024,93);
QS3extFP10G10=melcepst(QS3s10eQS3_bandsG10,125,'M',12,14,1024,93);
QS3extFP10B10=melcepst(QS3s10eQS3_bandsB10,125,'M',12,14,1024,93);
QS3extFP10A10=melcepst(QS3s10eQS3_bandsA10,125,'M',12,14,1024,93);
QS3extFP10T10=melcepst(QS3s10eQS3_bandsT10,125,'M',12,14,1024,93);
QS3extFP10D10=melcepst(QS3s10eQS3_bandsD10,125,'M',12,14,1024,93);
QS3extFP11G11=melcepst(QS3s11eQS3_bandsG11,125,'M',12,14,1024,93);
QS3extFP11B11=melcepst(QS3s11eQS3_bandsB11,125,'M',12,14,1024,93);
QS3extFP11A11=melcepst(QS3s11eQS3_bandsA11,125,'M',12,14,1024,93);
QS3extFP11T11=melcepst(QS3s11eQS3_bandsT11,125,'M',12,14,1024,93);
QS3extFP11D11=melcepst(QS3s11eQS3_bandsD11,125,'M',12,14,1024,93);
QS3extFP12G12=melcepst(QS3s12eQS3_bandsG12,125,'M',12,14,1024,93);
QS3extFP12B12=melcepst(QS3s12eQS3_bandsB12,125,'M',12,14,1024,93);
QS3extFP12A12=melcepst(QS3s12eQS3_bandsA12,125,'M',12,14,1024,93);
QS3extFP12T12=melcepst(QS3s12eQS3_bandsT12,125,'M',12,14,1024,93);
QS3extFP12D12=melcepst(QS3s12eQS3_bandsD12,125,'M',12,14,1024,93);
QS3extFP13G13=melcepst(QS3s13eQS3_bandsG13,125,'M',12,14,1024,93);
QS3extFP13B13=melcepst(QS3s13eQS3_bandsB13,125,'M',12,14,1024,93);
QS3extFP13A13=melcepst(QS3s13eQS3_bandsA13,125,'M',12,14,1024,93);
QS3extFP13T13=melcepst(QS3s13eQS3_bandsT13,125,'M',12,14,1024,93);
QS3extFP13D13=melcepst(QS3s13eQS3_bandsD13,125,'M',12,14,1024,93);
QS3extFP14G14=melcepst(QS3s14eQS3_bandsG14,125,'M',12,14,1024,93);
QS3extFP14B14=melcepst(QS3s14eQS3_bandsB14,125,'M',12,14,1024,93);
QS3extFP14A14=melcepst(QS3s14eQS3_bandsA14,125,'M',12,14,1024,93);
QS3extFP14T14=melcepst(QS3s14eQS3_bandsT14,125,'M',12,14,1024,93);
QS3extFP14D14=melcepst(QS3s14eQS3_bandsD14,125,'M',12,14,1024,93);
QS3extFP15G15=melcepst(QS3s15eQS3_bandsG15,125,'M',12,14,1024,93);
QS3extFP15B15=melcepst(QS3s15eQS3_bandsB15,125,'M',12,14,1024,93);
QS3extFP15A15=melcepst(QS3s15eQS3_bandsA15,125,'M',12,14,1024,93);
QS3extFP15T15=melcepst(QS3s15eQS3_bandsT15,125,'M',12,14,1024,93);
QS3extFP15D15=melcepst(QS3s15eQS3_bandsD15,125,'M',12,14,1024,93);
QS3extFP16G16=melcepst(QS3s16eQS3_bandsG16,125,'M',12,14,1024,93);
QS3extFP16B16=melcepst(QS3s16eQS3_bandsB16,125,'M',12,14,1024,93);
QS3extFP16A16=melcepst(QS3s16eQS3_bandsA16,125,'M',12,14,1024,93);
QS3extFP16T16=melcepst(QS3s16eQS3_bandsT16,125,'M',12,14,1024,93);
QS3extFP16D16=melcepst(QS3s16eQS3_bandsD16,125,'M',12,14,1024,93);
QS3extFP17G17=melcepst(QS3s17eQS3_bandsG17,125,'M',12,14,1024,93);
QS3extFP17B17=melcepst(QS3s17eQS3_bandsB17,125,'M',12,14,1024,93);
QS3extFP17A17=melcepst(QS3s17eQS3_bandsA17,125,'M',12,14,1024,93);
QS3extFP17T17=melcepst(QS3s17eQS3_bandsT17,125,'M',12,14,1024,93);
QS3extFP17D17=melcepst(QS3s17eQS3_bandsD17,125,'M',12,14,1024,93);
QS3extFP18G18=melcepst(QS3s18eQS3_bandsG18,125,'M',12,14,1024,93);
QS3extFP18B18=melcepst(QS3s18eQS3_bandsB18,125,'M',12,14,1024,93);
QS3extFP18A18=melcepst(QS3s18eQS3_bandsA18,125,'M',12,14,1024,93);
QS3extFP18T18=melcepst(QS3s18eQS3_bandsT18,125,'M',12,14,1024,93);
QS3extFP18D18=melcepst(QS3s18eQS3_bandsD18,125,'M',12,14,1024,93);
QS3extFP19G19=melcepst(QS3s19eQS3_bandsG19,125,'M',12,14,1024,93);
QS3extFP19B19=melcepst(QS3s19eQS3_bandsB19,125,'M',12,14,1024,93);
QS3extFP19A19=melcepst(QS3s19eQS3_bandsA19,125,'M',12,14,1024,93);
QS3extFP19T19=melcepst(QS3s19eQS3_bandsT19,125,'M',12,14,1024,93);
QS3extFP19D19=melcepst(QS3s19eQS3_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS3AALPHA = [QS3extFP1A1;QS3extFP2A2;QS3extFP3A3; QS3extFP4A4;QS3extFP5A5;QS3extFP6A6;QS3extFP7A7;QS3extFP8A8;QS3extFP9A9;QS3extFP10A10;QS3extFP11A11;QS3extFP12A12;QS3extFP13A13;QS3extFP14A14;QS3extFP15A15;QS3extFP16A16;QS3extFP17A17;QS3extFP18A18;QS3extFP19A19];


%%set expected output


QS3AALPHA(:,13)=0;
QS3AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS3AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS3AALPHA(:,1:12); 
tgtestS=QS3AALPHA(:,13:14);


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
