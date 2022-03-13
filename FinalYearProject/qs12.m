%% Load the dataset 

QS12  = readtable("QS12.csv");

%Delete time table
QS12=QS12(:,2:20);
%% Question 1 data

QS12FP1 = table2array(QS12(:,1));
QS12FP2 = table2array(QS12(:,2));
QS12F3  = table2array(QS12(:,3));
QS12F4  = table2array(QS12(:,4));
QS12F7  = table2array(QS12(:,5));
QS12F8  = table2array(QS12(:,6));
QS12C3  = table2array(QS12(:,7));
QS12C4  = table2array(QS12(:,8));
QS12T7  = table2array(QS12(:,9));
QS12T8  = table2array(QS12(:,10));
QS12P3  = table2array(QS12(:,11));
QS12P4  = table2array(QS12(:,12));
QS12P7  = table2array(QS12(:,13));
QS12P8  = table2array(QS12(:,14));
QS12O1  = table2array(QS12(:,15));
QS12O2  = table2array(QS12(:,16));
QS12Fz  = table2array(QS12(:,17));
QS12Cz  = table2array(QS12(:,18));
QS12Pz  = table2array(QS12(:,19));

%% Splitband for QS12 

[QS12Gamma1,QS12Beta1,QS12Alpha1,QS12Theta1,QS12Delta1, QS12Sig0601] = splitband(QS12FP1);
[QS12Gamma2,QS12Beta2,QS12Alpha2,QS12Theta2,QS12Delta2, QS12Sig0602] = splitband(QS12FP2);
[QS12Gamma3,QS12Beta3,QS12Alpha3,QS12Theta3,QS12Delta3, QS12Sig0603] = splitband(QS12F3);
[QS12Gamma4,QS12Beta4,QS12Alpha4,QS12Theta4,QS12Delta4, QS12Sig0604] = splitband(QS12F4);
[QS12Gamma5,QS12Beta5,QS12Alpha5,QS12Theta5,QS12Delta5, QS12Sig0605] = splitband(QS12F7);
[QS12Gamma6,QS12Beta6,QS12Alpha6,QS12Theta6,QS12Delta6, QS12Sig0606] = splitband(QS12F8);
[QS12Gamma7,QS12Beta7,QS12Alpha7,QS12Theta7,QS12Delta7, QS12Sig0607] = splitband(QS12C3);
[QS12Gamma8,QS12Beta8,QS12Alpha8,QS12Theta8,QS12Delta8, QS12Sig0608] = splitband(QS12C4);
[QS12Gamma9,QS12Beta9,QS12Alpha9,QS12Theta9,QS12Delta9, QS12Sig0609] = splitband(QS12T7);
[QS12Gamma10,QS12Beta10,QS12Alpha10,QS12Theta10,QS12Delta10, QS12Sig06010] = splitband(QS12T8);
[QS12Gamma11,QS12Beta11,QS12Alpha11,QS12Theta11,QS12Delta11, QS12Sig06011] = splitband(QS12P3);
[QS12Gamma12,QS12Beta12,QS12Alpha12,QS12Theta12,QS12Delta12, QS12Sig06012] = splitband(QS12P4);
[QS12Gamma13,QS12Beta13,QS12Alpha13,QS12Theta13,QS12Delta13, QS12Sig06013] = splitband(QS12P7);
[QS12Gamma14,QS12Beta14,QS12Alpha14,QS12Theta14,QS12Delta14, QS12Sig06014] = splitband(QS12P8);
[QS12Gamma15,QS12Beta15,QS12Alpha15,QS12Theta15,QS12Delta15, QS12Sig06015] = splitband(QS12O1);
[QS12Gamma16,QS12Beta16,QS12Alpha16,QS12Theta16,QS12Delta16, QS12Sig06016] = splitband(QS12O2);
[QS12Gamma17,QS12Beta17,QS12Alpha17,QS12Theta17,QS12Delta17, QS12Sig06017] = splitband(QS12Fz);
[QS12Gamma18,QS12Beta18,QS12Alpha18,QS12Theta18,QS12Delta18, QS12Sig06018] = splitband(QS12Cz);
[QS12Gamma19,QS12Beta19,QS12Alpha19,QS12Theta19,QS12Delta19, QS12Sig06019] = splitband(QS12Pz);


%% feature extraQS12tion for QS12 

QS12s1eQS12_bandsG1 = QS12Gamma1;
QS12s1eQS12_bandsB1 = QS12Beta1;
QS12s1eQS12_bandsA1 = QS12Alpha1;
QS12s1eQS12_bandsT1 = QS12Theta1;
QS12s1eQS12_bandsD1 = QS12Delta1;
QS12s2eQS12_bandsG2 = QS12Gamma2;
QS12s2eQS12_bandsB2 = QS12Beta2;
QS12s2eQS12_bandsA2 = QS12Alpha2;
QS12s2eQS12_bandsT2 = QS12Theta2;
QS12s2eQS12_bandsD2 = QS12Delta2;
QS12s3eQS12_bandsG3 = QS12Gamma3;
QS12s3eQS12_bandsB3 = QS12Beta3;
QS12s3eQS12_bandsA3 = QS12Alpha3;
QS12s3eQS12_bandsT3 = QS12Theta3;
QS12s3eQS12_bandsD3 = QS12Delta3;
QS12s4eQS12_bandsG4 = QS12Gamma4;
QS12s4eQS12_bandsB4 = QS12Beta4;
QS12s4eQS12_bandsA4 = QS12Alpha4;
QS12s4eQS12_bandsT4 = QS12Theta4;
QS12s4eQS12_bandsD4 = QS12Delta4;
QS12s5eQS12_bandsG5 = QS12Gamma5;
QS12s5eQS12_bandsB5 = QS12Beta5;
QS12s5eQS12_bandsA5 = QS12Alpha5;
QS12s5eQS12_bandsT5 = QS12Theta5;
QS12s5eQS12_bandsD5 = QS12Delta5;
QS12s6eQS12_bandsG6 = QS12Gamma6;
QS12s6eQS12_bandsB6 = QS12Beta6;
QS12s6eQS12_bandsA6 = QS12Alpha6;
QS12s6eQS12_bandsT6 = QS12Theta6;
QS12s6eQS12_bandsD6 = QS12Delta6;
QS12s7eQS12_bandsG7 = QS12Gamma7;
QS12s7eQS12_bandsB7 = QS12Beta7;
QS12s7eQS12_bandsA7 = QS12Alpha7;
QS12s7eQS12_bandsT7 = QS12Theta7;
QS12s7eQS12_bandsD7 = QS12Delta7;
QS12s8eQS12_bandsG8 = QS12Gamma8;
QS12s8eQS12_bandsB8 = QS12Beta8;
QS12s8eQS12_bandsA8 = QS12Alpha8;
QS12s8eQS12_bandsT8 = QS12Theta8;
QS12s8eQS12_bandsD8 = QS12Delta8;
QS12s9eQS12_bandsG9 = QS12Gamma9;
QS12s9eQS12_bandsB9 = QS12Beta9;
QS12s9eQS12_bandsA9 = QS12Alpha9;
QS12s9eQS12_bandsT9 = QS12Theta9;
QS12s9eQS12_bandsD9 = QS12Delta9;
QS12s10eQS12_bandsG10 = QS12Gamma10;
QS12s10eQS12_bandsB10 = QS12Beta10;
QS12s10eQS12_bandsA10 = QS12Alpha10;
QS12s10eQS12_bandsT10 = QS12Theta10;
QS12s10eQS12_bandsD10 = QS12Delta10;
QS12s11eQS12_bandsG11 = QS12Gamma11;
QS12s11eQS12_bandsB11 = QS12Beta11;
QS12s11eQS12_bandsA11 = QS12Alpha11;
QS12s11eQS12_bandsT11 = QS12Theta11;
QS12s11eQS12_bandsD11 = QS12Delta11;
QS12s12eQS12_bandsG12 = QS12Gamma12;
QS12s12eQS12_bandsB12 = QS12Beta12;
QS12s12eQS12_bandsA12 = QS12Alpha12;
QS12s12eQS12_bandsT12= QS12Theta12;
QS12s12eQS12_bandsD12 = QS12Delta12;
QS12s13eQS12_bandsG13 = QS12Gamma13;
QS12s13eQS12_bandsB13 = QS12Beta13;
QS12s13eQS12_bandsA13 = QS12Alpha13;
QS12s13eQS12_bandsT13 = QS12Theta13;
QS12s13eQS12_bandsD13 = QS12Delta13;
QS12s14eQS12_bandsG14 = QS12Gamma14;
QS12s14eQS12_bandsB14 = QS12Beta14;
QS12s14eQS12_bandsA14 = QS12Alpha14;
QS12s14eQS12_bandsT14 = QS12Theta14;
QS12s14eQS12_bandsD14 = QS12Delta14;
QS12s15eQS12_bandsG15 = QS12Gamma15;
QS12s15eQS12_bandsB15 = QS12Beta15;
QS12s15eQS12_bandsA15 = QS12Alpha15;
QS12s15eQS12_bandsT15 = QS12Theta15;
QS12s15eQS12_bandsD15 = QS12Delta15;
QS12s16eQS12_bandsG16 = QS12Gamma16;
QS12s16eQS12_bandsB16 = QS12Beta16;
QS12s16eQS12_bandsA16 = QS12Alpha16;
QS12s16eQS12_bandsT16 = QS12Theta16;
QS12s16eQS12_bandsD16 = QS12Delta16;
QS12s17eQS12_bandsG17 = QS12Gamma17;
QS12s17eQS12_bandsB17 = QS12Beta17;
QS12s17eQS12_bandsA17 = QS12Alpha17;
QS12s17eQS12_bandsT17 = QS12Theta17;
QS12s17eQS12_bandsD17 = QS12Delta17;
QS12s18eQS12_bandsG18 = QS12Gamma18;
QS12s18eQS12_bandsB18 = QS12Beta18;
QS12s18eQS12_bandsA18 = QS12Alpha18;
QS12s18eQS12_bandsT18 = QS12Theta18;
QS12s18eQS12_bandsD18 = QS12Delta18;
QS12s19eQS12_bandsG19 = QS12Gamma19;
QS12s19eQS12_bandsB19 = QS12Beta19;
QS12s19eQS12_bandsA19 = QS12Alpha19;
QS12s19eQS12_bandsT19 = QS12Theta19;
QS12s19eQS12_bandsD19 = QS12Delta19;
QS12extFP1G1=melcepst(QS12s1eQS12_bandsG1,125,'M',12,14,1024,93);
QS12extFP1B1=melcepst(QS12s1eQS12_bandsB1,125,'M',12,14,1024,93);
QS12extFP1A1=melcepst(QS12s1eQS12_bandsA1,125,'M',12,14,1024,93);
QS12extFP1T1=melcepst(QS12s1eQS12_bandsT1,125,'M',12,14,1024,93);
QS12extFP1D1=melcepst(QS12s1eQS12_bandsD1,125,'M',12,14,1024,93);
			 
QS12extFP2G2=melcepst(QS12s2eQS12_bandsG2,125,'M',12,14,1024,93);
QS12extFP2B2=melcepst(QS12s2eQS12_bandsB2,125,'M',12,14,1024,93);
QS12extFP2A2=melcepst(QS12s2eQS12_bandsA2,125,'M',12,14,1024,93);
QS12extFP2T2=melcepst(QS12s2eQS12_bandsT2,125,'M',12,14,1024,93);
QS12extFP2D2=melcepst(QS12s2eQS12_bandsD2,125,'M',12,14,1024,93);
			   
QS12extFP3G3=melcepst(QS12s3eQS12_bandsG3,125,'M',12,14,1024,93);
QS12extFP3B3=melcepst(QS12s3eQS12_bandsB3,125,'M',12,14,1024,93);
QS12extFP3A3=melcepst(QS12s3eQS12_bandsA3,125,'M',12,14,1024,93);
QS12extFP3T3=melcepst(QS12s3eQS12_bandsT3,125,'M',12,14,1024,93);
QS12extFP3D3=melcepst(QS12s3eQS12_bandsD3,125,'M',12,14,1024,93);
			   
QS12extFP4G4=melcepst(QS12s4eQS12_bandsG4,125,'M',12,14,1024,93);
QS12extFP4B4=melcepst(QS12s4eQS12_bandsB4,125,'M',12,14,1024,93);
QS12extFP4A4=melcepst(QS12s4eQS12_bandsA4,125,'M',12,14,1024,93);
QS12extFP4T4=melcepst(QS12s4eQS12_bandsT4,125,'M',12,14,1024,93);
QS12extFP4D4=melcepst(QS12s4eQS12_bandsD4,125,'M',12,14,1024,93);
QS12extFP5G5=melcepst(QS12s5eQS12_bandsG5,125,'M',12,14,1024,93);
QS12extFP5B5=melcepst(QS12s5eQS12_bandsB5,125,'M',12,14,1024,93);
QS12extFP5A5=melcepst(QS12s5eQS12_bandsA5,125,'M',12,14,1024,93);
QS12extFP5T5=melcepst(QS12s5eQS12_bandsT5,125,'M',12,14,1024,93);
QS12extFP5D5=melcepst(QS12s5eQS12_bandsD5,125,'M',12,14,1024,93);
QS12extFP6G6=melcepst(QS12s6eQS12_bandsG6,125,'M',12,14,1024,93);
QS12extFP6B6=melcepst(QS12s6eQS12_bandsB6,125,'M',12,14,1024,93);
QS12extFP6A6=melcepst(QS12s6eQS12_bandsA6,125,'M',12,14,1024,93);
QS12extFP6T6=melcepst(QS12s6eQS12_bandsT6,125,'M',12,14,1024,93);
QS12extFP6D6=melcepst(QS12s6eQS12_bandsD6,125,'M',12,14,1024,93);
QS12extFP7G7=melcepst(QS12s7eQS12_bandsG7,125,'M',12,14,1024,93);
QS12extFP7B7=melcepst(QS12s7eQS12_bandsB7,125,'M',12,14,1024,93);
QS12extFP7A7=melcepst(QS12s7eQS12_bandsA7,125,'M',12,14,1024,93);
QS12extFP7T7=melcepst(QS12s7eQS12_bandsT7,125,'M',12,14,1024,93);
QS12extFP7D7=melcepst(QS12s7eQS12_bandsD7,125,'M',12,14,1024,93);
QS12extFP8G8=melcepst(QS12s8eQS12_bandsG8,125,'M',12,14,1024,93);
QS12extFP8B8=melcepst(QS12s8eQS12_bandsB8,125,'M',12,14,1024,93);
QS12extFP8A8=melcepst(QS12s8eQS12_bandsA8,125,'M',12,14,1024,93);
QS12extFP8T8=melcepst(QS12s8eQS12_bandsT8,125,'M',12,14,1024,93);
QS12extFP8D8=melcepst(QS12s8eQS12_bandsD8,125,'M',12,14,1024,93);
QS12extFP9G9=melcepst(QS12s9eQS12_bandsG9,125,'M',12,14,1024,93);
QS12extFP9B9=melcepst(QS12s9eQS12_bandsB9,125,'M',12,14,1024,93);
QS12extFP9A9=melcepst(QS12s9eQS12_bandsA9,125,'M',12,14,1024,93);
QS12extFP9T9=melcepst(QS12s9eQS12_bandsT9,125,'M',12,14,1024,93);
QS12extFP9D9=melcepst(QS12s9eQS12_bandsD9,125,'M',12,14,1024,93);
QS12extFP10G10=melcepst(QS12s10eQS12_bandsG10,125,'M',12,14,1024,93);
QS12extFP10B10=melcepst(QS12s10eQS12_bandsB10,125,'M',12,14,1024,93);
QS12extFP10A10=melcepst(QS12s10eQS12_bandsA10,125,'M',12,14,1024,93);
QS12extFP10T10=melcepst(QS12s10eQS12_bandsT10,125,'M',12,14,1024,93);
QS12extFP10D10=melcepst(QS12s10eQS12_bandsD10,125,'M',12,14,1024,93);
QS12extFP11G11=melcepst(QS12s11eQS12_bandsG11,125,'M',12,14,1024,93);
QS12extFP11B11=melcepst(QS12s11eQS12_bandsB11,125,'M',12,14,1024,93);
QS12extFP11A11=melcepst(QS12s11eQS12_bandsA11,125,'M',12,14,1024,93);
QS12extFP11T11=melcepst(QS12s11eQS12_bandsT11,125,'M',12,14,1024,93);
QS12extFP11D11=melcepst(QS12s11eQS12_bandsD11,125,'M',12,14,1024,93);
QS12extFP12G12=melcepst(QS12s12eQS12_bandsG12,125,'M',12,14,1024,93);
QS12extFP12B12=melcepst(QS12s12eQS12_bandsB12,125,'M',12,14,1024,93);
QS12extFP12A12=melcepst(QS12s12eQS12_bandsA12,125,'M',12,14,1024,93);
QS12extFP12T12=melcepst(QS12s12eQS12_bandsT12,125,'M',12,14,1024,93);
QS12extFP12D12=melcepst(QS12s12eQS12_bandsD12,125,'M',12,14,1024,93);
QS12extFP13G13=melcepst(QS12s13eQS12_bandsG13,125,'M',12,14,1024,93);
QS12extFP13B13=melcepst(QS12s13eQS12_bandsB13,125,'M',12,14,1024,93);
QS12extFP13A13=melcepst(QS12s13eQS12_bandsA13,125,'M',12,14,1024,93);
QS12extFP13T13=melcepst(QS12s13eQS12_bandsT13,125,'M',12,14,1024,93);
QS12extFP13D13=melcepst(QS12s13eQS12_bandsD13,125,'M',12,14,1024,93);
QS12extFP14G14=melcepst(QS12s14eQS12_bandsG14,125,'M',12,14,1024,93);
QS12extFP14B14=melcepst(QS12s14eQS12_bandsB14,125,'M',12,14,1024,93);
QS12extFP14A14=melcepst(QS12s14eQS12_bandsA14,125,'M',12,14,1024,93);
QS12extFP14T14=melcepst(QS12s14eQS12_bandsT14,125,'M',12,14,1024,93);
QS12extFP14D14=melcepst(QS12s14eQS12_bandsD14,125,'M',12,14,1024,93);
QS12extFP15G15=melcepst(QS12s15eQS12_bandsG15,125,'M',12,14,1024,93);
QS12extFP15B15=melcepst(QS12s15eQS12_bandsB15,125,'M',12,14,1024,93);
QS12extFP15A15=melcepst(QS12s15eQS12_bandsA15,125,'M',12,14,1024,93);
QS12extFP15T15=melcepst(QS12s15eQS12_bandsT15,125,'M',12,14,1024,93);
QS12extFP15D15=melcepst(QS12s15eQS12_bandsD15,125,'M',12,14,1024,93);
QS12extFP16G16=melcepst(QS12s16eQS12_bandsG16,125,'M',12,14,1024,93);
QS12extFP16B16=melcepst(QS12s16eQS12_bandsB16,125,'M',12,14,1024,93);
QS12extFP16A16=melcepst(QS12s16eQS12_bandsA16,125,'M',12,14,1024,93);
QS12extFP16T16=melcepst(QS12s16eQS12_bandsT16,125,'M',12,14,1024,93);
QS12extFP16D16=melcepst(QS12s16eQS12_bandsD16,125,'M',12,14,1024,93);
QS12extFP17G17=melcepst(QS12s17eQS12_bandsG17,125,'M',12,14,1024,93);
QS12extFP17B17=melcepst(QS12s17eQS12_bandsB17,125,'M',12,14,1024,93);
QS12extFP17A17=melcepst(QS12s17eQS12_bandsA17,125,'M',12,14,1024,93);
QS12extFP17T17=melcepst(QS12s17eQS12_bandsT17,125,'M',12,14,1024,93);
QS12extFP17D17=melcepst(QS12s17eQS12_bandsD17,125,'M',12,14,1024,93);
QS12extFP18G18=melcepst(QS12s18eQS12_bandsG18,125,'M',12,14,1024,93);
QS12extFP18B18=melcepst(QS12s18eQS12_bandsB18,125,'M',12,14,1024,93);
QS12extFP18A18=melcepst(QS12s18eQS12_bandsA18,125,'M',12,14,1024,93);
QS12extFP18T18=melcepst(QS12s18eQS12_bandsT18,125,'M',12,14,1024,93);
QS12extFP18D18=melcepst(QS12s18eQS12_bandsD18,125,'M',12,14,1024,93);
QS12extFP19G19=melcepst(QS12s19eQS12_bandsG19,125,'M',12,14,1024,93);
QS12extFP19B19=melcepst(QS12s19eQS12_bandsB19,125,'M',12,14,1024,93);
QS12extFP19A19=melcepst(QS12s19eQS12_bandsA19,125,'M',12,14,1024,93);
QS12extFP19T19=melcepst(QS12s19eQS12_bandsT19,125,'M',12,14,1024,93);
QS12extFP19D19=melcepst(QS12s19eQS12_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS12AALPHA = [QS12extFP1A1;QS12extFP2A2;QS12extFP3A3; QS12extFP4A4;QS12extFP5A5;QS12extFP6A6;QS12extFP7A7;QS12extFP8A8;QS12extFP9A9;QS12extFP10A10;QS12extFP11A11;QS12extFP12A12;QS12extFP13A13;QS12extFP14A14;QS12extFP15A15;QS12extFP16A16;QS12extFP17A17;QS12extFP18A18;QS12extFP19A19];


%%set expected output


QS12AALPHA(:,13)=0;
QS12AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS12AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS12AALPHA(:,1:12); 
tgtestS=QS12AALPHA(:,13:14);


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
