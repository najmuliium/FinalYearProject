%% Load the dataset 

QS6  = readtable("QS6.csv");

%Delete time table
QS6=QS6(:,2:20);

%% Question 1 data

QS6FP1 = table2array(QS6(:,1));
QS6FP2 = table2array(QS6(:,2));
QS6F3  = table2array(QS6(:,3));
QS6F4  = table2array(QS6(:,4));
QS6F7  = table2array(QS6(:,5));
QS6F8  = table2array(QS6(:,6));
QS6C3  = table2array(QS6(:,7));
QS6C4  = table2array(QS6(:,8));
QS6T7  = table2array(QS6(:,9));
QS6T8  = table2array(QS6(:,10));
QS6P3  = table2array(QS6(:,11));
QS6P4  = table2array(QS6(:,12));
QS6P7  = table2array(QS6(:,13));
QS6P8  = table2array(QS6(:,14));
QS6O1  = table2array(QS6(:,15));
QS6O2  = table2array(QS6(:,16));
QS6Fz  = table2array(QS6(:,17));
QS6Cz  = table2array(QS6(:,18));
QS6Pz  = table2array(QS6(:,19));

%% Splitband for QS6 

[QS6Gamma1,QS6Beta1,QS6Alpha1,QS6Theta1,QS6Delta1, QS6Sig0601] = splitband(QS6FP1);
[QS6Gamma2,QS6Beta2,QS6Alpha2,QS6Theta2,QS6Delta2, QS6Sig0602] = splitband(QS6FP2);
[QS6Gamma3,QS6Beta3,QS6Alpha3,QS6Theta3,QS6Delta3, QS6Sig0603] = splitband(QS6F3);
[QS6Gamma4,QS6Beta4,QS6Alpha4,QS6Theta4,QS6Delta4, QS6Sig0604] = splitband(QS6F4);
[QS6Gamma5,QS6Beta5,QS6Alpha5,QS6Theta5,QS6Delta5, QS6Sig0605] = splitband(QS6F7);
[QS6Gamma6,QS6Beta6,QS6Alpha6,QS6Theta6,QS6Delta6, QS6Sig0606] = splitband(QS6F8);
[QS6Gamma7,QS6Beta7,QS6Alpha7,QS6Theta7,QS6Delta7, QS6Sig0607] = splitband(QS6C3);
[QS6Gamma8,QS6Beta8,QS6Alpha8,QS6Theta8,QS6Delta8, QS6Sig0608] = splitband(QS6C4);
[QS6Gamma9,QS6Beta9,QS6Alpha9,QS6Theta9,QS6Delta9, QS6Sig0609] = splitband(QS6T7);
[QS6Gamma10,QS6Beta10,QS6Alpha10,QS6Theta10,QS6Delta10, QS6Sig06010] = splitband(QS6T8);
[QS6Gamma11,QS6Beta11,QS6Alpha11,QS6Theta11,QS6Delta11, QS6Sig06011] = splitband(QS6P3);
[QS6Gamma12,QS6Beta12,QS6Alpha12,QS6Theta12,QS6Delta12, QS6Sig06012] = splitband(QS6P4);
[QS6Gamma13,QS6Beta13,QS6Alpha13,QS6Theta13,QS6Delta13, QS6Sig06013] = splitband(QS6P7);
[QS6Gamma14,QS6Beta14,QS6Alpha14,QS6Theta14,QS6Delta14, QS6Sig06014] = splitband(QS6P8);
[QS6Gamma15,QS6Beta15,QS6Alpha15,QS6Theta15,QS6Delta15, QS6Sig06015] = splitband(QS6O1);
[QS6Gamma16,QS6Beta16,QS6Alpha16,QS6Theta16,QS6Delta16, QS6Sig06016] = splitband(QS6O2);
[QS6Gamma17,QS6Beta17,QS6Alpha17,QS6Theta17,QS6Delta17, QS6Sig06017] = splitband(QS6Fz);
[QS6Gamma18,QS6Beta18,QS6Alpha18,QS6Theta18,QS6Delta18, QS6Sig06018] = splitband(QS6Cz);
[QS6Gamma19,QS6Beta19,QS6Alpha19,QS6Theta19,QS6Delta19, QS6Sig06019] = splitband(QS6Pz);


%% feature extraQS6tion for QS6 

QS6s1eQS6_bandsG1 = QS6Gamma1;
QS6s1eQS6_bandsB1 = QS6Beta1;
QS6s1eQS6_bandsA1 = QS6Alpha1;
QS6s1eQS6_bandsT1 = QS6Theta1;
QS6s1eQS6_bandsD1 = QS6Delta1;
QS6s2eQS6_bandsG2 = QS6Gamma2;
QS6s2eQS6_bandsB2 = QS6Beta2;
QS6s2eQS6_bandsA2 = QS6Alpha2;
QS6s2eQS6_bandsT2 = QS6Theta2;
QS6s2eQS6_bandsD2 = QS6Delta2;
QS6s3eQS6_bandsG3 = QS6Gamma3;
QS6s3eQS6_bandsB3 = QS6Beta3;
QS6s3eQS6_bandsA3 = QS6Alpha3;
QS6s3eQS6_bandsT3 = QS6Theta3;
QS6s3eQS6_bandsD3 = QS6Delta3;
QS6s4eQS6_bandsG4 = QS6Gamma4;
QS6s4eQS6_bandsB4 = QS6Beta4;
QS6s4eQS6_bandsA4 = QS6Alpha4;
QS6s4eQS6_bandsT4 = QS6Theta4;
QS6s4eQS6_bandsD4 = QS6Delta4;
QS6s5eQS6_bandsG5 = QS6Gamma5;
QS6s5eQS6_bandsB5 = QS6Beta5;
QS6s5eQS6_bandsA5 = QS6Alpha5;
QS6s5eQS6_bandsT5 = QS6Theta5;
QS6s5eQS6_bandsD5 = QS6Delta5;
QS6s6eQS6_bandsG6 = QS6Gamma6;
QS6s6eQS6_bandsB6 = QS6Beta6;
QS6s6eQS6_bandsA6 = QS6Alpha6;
QS6s6eQS6_bandsT6 = QS6Theta6;
QS6s6eQS6_bandsD6 = QS6Delta6;
QS6s7eQS6_bandsG7 = QS6Gamma7;
QS6s7eQS6_bandsB7 = QS6Beta7;
QS6s7eQS6_bandsA7 = QS6Alpha7;
QS6s7eQS6_bandsT7 = QS6Theta7;
QS6s7eQS6_bandsD7 = QS6Delta7;
QS6s8eQS6_bandsG8 = QS6Gamma8;
QS6s8eQS6_bandsB8 = QS6Beta8;
QS6s8eQS6_bandsA8 = QS6Alpha8;
QS6s8eQS6_bandsT8 = QS6Theta8;
QS6s8eQS6_bandsD8 = QS6Delta8;
QS6s9eQS6_bandsG9 = QS6Gamma9;
QS6s9eQS6_bandsB9 = QS6Beta9;
QS6s9eQS6_bandsA9 = QS6Alpha9;
QS6s9eQS6_bandsT9 = QS6Theta9;
QS6s9eQS6_bandsD9 = QS6Delta9;
QS6s10eQS6_bandsG10 = QS6Gamma10;
QS6s10eQS6_bandsB10 = QS6Beta10;
QS6s10eQS6_bandsA10 = QS6Alpha10;
QS6s10eQS6_bandsT10 = QS6Theta10;
QS6s10eQS6_bandsD10 = QS6Delta10;
QS6s11eQS6_bandsG11 = QS6Gamma11;
QS6s11eQS6_bandsB11 = QS6Beta11;
QS6s11eQS6_bandsA11 = QS6Alpha11;
QS6s11eQS6_bandsT11 = QS6Theta11;
QS6s11eQS6_bandsD11 = QS6Delta11;
QS6s12eQS6_bandsG12 = QS6Gamma12;
QS6s12eQS6_bandsB12 = QS6Beta12;
QS6s12eQS6_bandsA12 = QS6Alpha12;
QS6s12eQS6_bandsT12= QS6Theta12;
QS6s12eQS6_bandsD12 = QS6Delta12;
QS6s13eQS6_bandsG13 = QS6Gamma13;
QS6s13eQS6_bandsB13 = QS6Beta13;
QS6s13eQS6_bandsA13 = QS6Alpha13;
QS6s13eQS6_bandsT13 = QS6Theta13;
QS6s13eQS6_bandsD13 = QS6Delta13;
QS6s14eQS6_bandsG14 = QS6Gamma14;
QS6s14eQS6_bandsB14 = QS6Beta14;
QS6s14eQS6_bandsA14 = QS6Alpha14;
QS6s14eQS6_bandsT14 = QS6Theta14;
QS6s14eQS6_bandsD14 = QS6Delta14;
QS6s15eQS6_bandsG15 = QS6Gamma15;
QS6s15eQS6_bandsB15 = QS6Beta15;
QS6s15eQS6_bandsA15 = QS6Alpha15;
QS6s15eQS6_bandsT15 = QS6Theta15;
QS6s15eQS6_bandsD15 = QS6Delta15;
QS6s16eQS6_bandsG16 = QS6Gamma16;
QS6s16eQS6_bandsB16 = QS6Beta16;
QS6s16eQS6_bandsA16 = QS6Alpha16;
QS6s16eQS6_bandsT16 = QS6Theta16;
QS6s16eQS6_bandsD16 = QS6Delta16;
QS6s17eQS6_bandsG17 = QS6Gamma17;
QS6s17eQS6_bandsB17 = QS6Beta17;
QS6s17eQS6_bandsA17 = QS6Alpha17;
QS6s17eQS6_bandsT17 = QS6Theta17;
QS6s17eQS6_bandsD17 = QS6Delta17;
QS6s18eQS6_bandsG18 = QS6Gamma18;
QS6s18eQS6_bandsB18 = QS6Beta18;
QS6s18eQS6_bandsA18 = QS6Alpha18;
QS6s18eQS6_bandsT18 = QS6Theta18;
QS6s18eQS6_bandsD18 = QS6Delta18;
QS6s19eQS6_bandsG19 = QS6Gamma19;
QS6s19eQS6_bandsB19 = QS6Beta19;
QS6s19eQS6_bandsA19 = QS6Alpha19;
QS6s19eQS6_bandsT19 = QS6Theta19;
QS6s19eQS6_bandsD19 = QS6Delta19;
QS6extFP1G1=melcepst(QS6s1eQS6_bandsG1,125,'M',12,14,1024,93);
QS6extFP1B1=melcepst(QS6s1eQS6_bandsB1,125,'M',12,14,1024,93);
QS6extFP1A1=melcepst(QS6s1eQS6_bandsA1,125,'M',12,14,1024,93);
QS6extFP1T1=melcepst(QS6s1eQS6_bandsT1,125,'M',12,14,1024,93);
QS6extFP1D1=melcepst(QS6s1eQS6_bandsD1,125,'M',12,14,1024,93);
			 
QS6extFP2G2=melcepst(QS6s2eQS6_bandsG2,125,'M',12,14,1024,93);
QS6extFP2B2=melcepst(QS6s2eQS6_bandsB2,125,'M',12,14,1024,93);
QS6extFP2A2=melcepst(QS6s2eQS6_bandsA2,125,'M',12,14,1024,93);
QS6extFP2T2=melcepst(QS6s2eQS6_bandsT2,125,'M',12,14,1024,93);
QS6extFP2D2=melcepst(QS6s2eQS6_bandsD2,125,'M',12,14,1024,93);
			   
QS6extFP3G3=melcepst(QS6s3eQS6_bandsG3,125,'M',12,14,1024,93);
QS6extFP3B3=melcepst(QS6s3eQS6_bandsB3,125,'M',12,14,1024,93);
QS6extFP3A3=melcepst(QS6s3eQS6_bandsA3,125,'M',12,14,1024,93);
QS6extFP3T3=melcepst(QS6s3eQS6_bandsT3,125,'M',12,14,1024,93);
QS6extFP3D3=melcepst(QS6s3eQS6_bandsD3,125,'M',12,14,1024,93);
			   
QS6extFP4G4=melcepst(QS6s4eQS6_bandsG4,125,'M',12,14,1024,93);
QS6extFP4B4=melcepst(QS6s4eQS6_bandsB4,125,'M',12,14,1024,93);
QS6extFP4A4=melcepst(QS6s4eQS6_bandsA4,125,'M',12,14,1024,93);
QS6extFP4T4=melcepst(QS6s4eQS6_bandsT4,125,'M',12,14,1024,93);
QS6extFP4D4=melcepst(QS6s4eQS6_bandsD4,125,'M',12,14,1024,93);
QS6extFP5G5=melcepst(QS6s5eQS6_bandsG5,125,'M',12,14,1024,93);
QS6extFP5B5=melcepst(QS6s5eQS6_bandsB5,125,'M',12,14,1024,93);
QS6extFP5A5=melcepst(QS6s5eQS6_bandsA5,125,'M',12,14,1024,93);
QS6extFP5T5=melcepst(QS6s5eQS6_bandsT5,125,'M',12,14,1024,93);
QS6extFP5D5=melcepst(QS6s5eQS6_bandsD5,125,'M',12,14,1024,93);
QS6extFP6G6=melcepst(QS6s6eQS6_bandsG6,125,'M',12,14,1024,93);
QS6extFP6B6=melcepst(QS6s6eQS6_bandsB6,125,'M',12,14,1024,93);
QS6extFP6A6=melcepst(QS6s6eQS6_bandsA6,125,'M',12,14,1024,93);
QS6extFP6T6=melcepst(QS6s6eQS6_bandsT6,125,'M',12,14,1024,93);
QS6extFP6D6=melcepst(QS6s6eQS6_bandsD6,125,'M',12,14,1024,93);
QS6extFP7G7=melcepst(QS6s7eQS6_bandsG7,125,'M',12,14,1024,93);
QS6extFP7B7=melcepst(QS6s7eQS6_bandsB7,125,'M',12,14,1024,93);
QS6extFP7A7=melcepst(QS6s7eQS6_bandsA7,125,'M',12,14,1024,93);
QS6extFP7T7=melcepst(QS6s7eQS6_bandsT7,125,'M',12,14,1024,93);
QS6extFP7D7=melcepst(QS6s7eQS6_bandsD7,125,'M',12,14,1024,93);
QS6extFP8G8=melcepst(QS6s8eQS6_bandsG8,125,'M',12,14,1024,93);
QS6extFP8B8=melcepst(QS6s8eQS6_bandsB8,125,'M',12,14,1024,93);
QS6extFP8A8=melcepst(QS6s8eQS6_bandsA8,125,'M',12,14,1024,93);
QS6extFP8T8=melcepst(QS6s8eQS6_bandsT8,125,'M',12,14,1024,93);
QS6extFP8D8=melcepst(QS6s8eQS6_bandsD8,125,'M',12,14,1024,93);
QS6extFP9G9=melcepst(QS6s9eQS6_bandsG9,125,'M',12,14,1024,93);
QS6extFP9B9=melcepst(QS6s9eQS6_bandsB9,125,'M',12,14,1024,93);
QS6extFP9A9=melcepst(QS6s9eQS6_bandsA9,125,'M',12,14,1024,93);
QS6extFP9T9=melcepst(QS6s9eQS6_bandsT9,125,'M',12,14,1024,93);
QS6extFP9D9=melcepst(QS6s9eQS6_bandsD9,125,'M',12,14,1024,93);
QS6extFP10G10=melcepst(QS6s10eQS6_bandsG10,125,'M',12,14,1024,93);
QS6extFP10B10=melcepst(QS6s10eQS6_bandsB10,125,'M',12,14,1024,93);
QS6extFP10A10=melcepst(QS6s10eQS6_bandsA10,125,'M',12,14,1024,93);
QS6extFP10T10=melcepst(QS6s10eQS6_bandsT10,125,'M',12,14,1024,93);
QS6extFP10D10=melcepst(QS6s10eQS6_bandsD10,125,'M',12,14,1024,93);
QS6extFP11G11=melcepst(QS6s11eQS6_bandsG11,125,'M',12,14,1024,93);
QS6extFP11B11=melcepst(QS6s11eQS6_bandsB11,125,'M',12,14,1024,93);
QS6extFP11A11=melcepst(QS6s11eQS6_bandsA11,125,'M',12,14,1024,93);
QS6extFP11T11=melcepst(QS6s11eQS6_bandsT11,125,'M',12,14,1024,93);
QS6extFP11D11=melcepst(QS6s11eQS6_bandsD11,125,'M',12,14,1024,93);
QS6extFP12G12=melcepst(QS6s12eQS6_bandsG12,125,'M',12,14,1024,93);
QS6extFP12B12=melcepst(QS6s12eQS6_bandsB12,125,'M',12,14,1024,93);
QS6extFP12A12=melcepst(QS6s12eQS6_bandsA12,125,'M',12,14,1024,93);
QS6extFP12T12=melcepst(QS6s12eQS6_bandsT12,125,'M',12,14,1024,93);
QS6extFP12D12=melcepst(QS6s12eQS6_bandsD12,125,'M',12,14,1024,93);
QS6extFP13G13=melcepst(QS6s13eQS6_bandsG13,125,'M',12,14,1024,93);
QS6extFP13B13=melcepst(QS6s13eQS6_bandsB13,125,'M',12,14,1024,93);
QS6extFP13A13=melcepst(QS6s13eQS6_bandsA13,125,'M',12,14,1024,93);
QS6extFP13T13=melcepst(QS6s13eQS6_bandsT13,125,'M',12,14,1024,93);
QS6extFP13D13=melcepst(QS6s13eQS6_bandsD13,125,'M',12,14,1024,93);
QS6extFP14G14=melcepst(QS6s14eQS6_bandsG14,125,'M',12,14,1024,93);
QS6extFP14B14=melcepst(QS6s14eQS6_bandsB14,125,'M',12,14,1024,93);
QS6extFP14A14=melcepst(QS6s14eQS6_bandsA14,125,'M',12,14,1024,93);
QS6extFP14T14=melcepst(QS6s14eQS6_bandsT14,125,'M',12,14,1024,93);
QS6extFP14D14=melcepst(QS6s14eQS6_bandsD14,125,'M',12,14,1024,93);
QS6extFP15G15=melcepst(QS6s15eQS6_bandsG15,125,'M',12,14,1024,93);
QS6extFP15B15=melcepst(QS6s15eQS6_bandsB15,125,'M',12,14,1024,93);
QS6extFP15A15=melcepst(QS6s15eQS6_bandsA15,125,'M',12,14,1024,93);
QS6extFP15T15=melcepst(QS6s15eQS6_bandsT15,125,'M',12,14,1024,93);
QS6extFP15D15=melcepst(QS6s15eQS6_bandsD15,125,'M',12,14,1024,93);
QS6extFP16G16=melcepst(QS6s16eQS6_bandsG16,125,'M',12,14,1024,93);
QS6extFP16B16=melcepst(QS6s16eQS6_bandsB16,125,'M',12,14,1024,93);
QS6extFP16A16=melcepst(QS6s16eQS6_bandsA16,125,'M',12,14,1024,93);
QS6extFP16T16=melcepst(QS6s16eQS6_bandsT16,125,'M',12,14,1024,93);
QS6extFP16D16=melcepst(QS6s16eQS6_bandsD16,125,'M',12,14,1024,93);
QS6extFP17G17=melcepst(QS6s17eQS6_bandsG17,125,'M',12,14,1024,93);
QS6extFP17B17=melcepst(QS6s17eQS6_bandsB17,125,'M',12,14,1024,93);
QS6extFP17A17=melcepst(QS6s17eQS6_bandsA17,125,'M',12,14,1024,93);
QS6extFP17T17=melcepst(QS6s17eQS6_bandsT17,125,'M',12,14,1024,93);
QS6extFP17D17=melcepst(QS6s17eQS6_bandsD17,125,'M',12,14,1024,93);
QS6extFP18G18=melcepst(QS6s18eQS6_bandsG18,125,'M',12,14,1024,93);
QS6extFP18B18=melcepst(QS6s18eQS6_bandsB18,125,'M',12,14,1024,93);
QS6extFP18A18=melcepst(QS6s18eQS6_bandsA18,125,'M',12,14,1024,93);
QS6extFP18T18=melcepst(QS6s18eQS6_bandsT18,125,'M',12,14,1024,93);
QS6extFP18D18=melcepst(QS6s18eQS6_bandsD18,125,'M',12,14,1024,93);
QS6extFP19G19=melcepst(QS6s19eQS6_bandsG19,125,'M',12,14,1024,93);
QS6extFP19B19=melcepst(QS6s19eQS6_bandsB19,125,'M',12,14,1024,93);
QS6extFP19A19=melcepst(QS6s19eQS6_bandsA19,125,'M',12,14,1024,93);
QS6extFP19T19=melcepst(QS6s19eQS6_bandsT19,125,'M',12,14,1024,93);
QS6extFP19D19=melcepst(QS6s19eQS6_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS6AALPHA = [QS6extFP1A1;QS6extFP2A2;QS6extFP3A3; QS6extFP4A4;QS6extFP5A5;QS6extFP6A6;QS6extFP7A7;QS6extFP8A8;QS6extFP9A9;QS6extFP10A10;QS6extFP11A11;QS6extFP12A12;QS6extFP13A13;QS6extFP14A14;QS6extFP15A15;QS6extFP16A16;QS6extFP17A17;QS6extFP18A18;QS6extFP19A19];


%%set expected output


QS6AALPHA(:,13)=0;
QS6AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS6AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS6AALPHA(:,1:12); 
tgtestS=QS6AALPHA(:,13:14);


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
