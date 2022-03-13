%% Load the dataset 

QS11  = readtable("QS11.csv");

%Delete time table
QS11=QS11(:,2:20);
%% Question 1 data

QS11FP1 = table2array(QS11(:,1));
QS11FP2 = table2array(QS11(:,2));
QS11F3  = table2array(QS11(:,3));
QS11F4  = table2array(QS11(:,4));
QS11F7  = table2array(QS11(:,5));
QS11F8  = table2array(QS11(:,6));
QS11C3  = table2array(QS11(:,7));
QS11C4  = table2array(QS11(:,8));
QS11T7  = table2array(QS11(:,9));
QS11T8  = table2array(QS11(:,10));
QS11P3  = table2array(QS11(:,11));
QS11P4  = table2array(QS11(:,12));
QS11P7  = table2array(QS11(:,13));
QS11P8  = table2array(QS11(:,14));
QS11O1  = table2array(QS11(:,15));
QS11O2  = table2array(QS11(:,16));
QS11Fz  = table2array(QS11(:,17));
QS11Cz  = table2array(QS11(:,18));
QS11Pz  = table2array(QS11(:,19));

%% Splitband for QS11 

[QS11Gamma1,QS11Beta1,QS11Alpha1,QS11Theta1,QS11Delta1, QS11Sig0601] = splitband(QS11FP1);
[QS11Gamma2,QS11Beta2,QS11Alpha2,QS11Theta2,QS11Delta2, QS11Sig0602] = splitband(QS11FP2);
[QS11Gamma3,QS11Beta3,QS11Alpha3,QS11Theta3,QS11Delta3, QS11Sig0603] = splitband(QS11F3);
[QS11Gamma4,QS11Beta4,QS11Alpha4,QS11Theta4,QS11Delta4, QS11Sig0604] = splitband(QS11F4);
[QS11Gamma5,QS11Beta5,QS11Alpha5,QS11Theta5,QS11Delta5, QS11Sig0605] = splitband(QS11F7);
[QS11Gamma6,QS11Beta6,QS11Alpha6,QS11Theta6,QS11Delta6, QS11Sig0606] = splitband(QS11F8);
[QS11Gamma7,QS11Beta7,QS11Alpha7,QS11Theta7,QS11Delta7, QS11Sig0607] = splitband(QS11C3);
[QS11Gamma8,QS11Beta8,QS11Alpha8,QS11Theta8,QS11Delta8, QS11Sig0608] = splitband(QS11C4);
[QS11Gamma9,QS11Beta9,QS11Alpha9,QS11Theta9,QS11Delta9, QS11Sig0609] = splitband(QS11T7);
[QS11Gamma10,QS11Beta10,QS11Alpha10,QS11Theta10,QS11Delta10, QS11Sig06010] = splitband(QS11T8);
[QS11Gamma11,QS11Beta11,QS11Alpha11,QS11Theta11,QS11Delta11, QS11Sig06011] = splitband(QS11P3);
[QS11Gamma12,QS11Beta12,QS11Alpha12,QS11Theta12,QS11Delta12, QS11Sig06012] = splitband(QS11P4);
[QS11Gamma13,QS11Beta13,QS11Alpha13,QS11Theta13,QS11Delta13, QS11Sig06013] = splitband(QS11P7);
[QS11Gamma14,QS11Beta14,QS11Alpha14,QS11Theta14,QS11Delta14, QS11Sig06014] = splitband(QS11P8);
[QS11Gamma15,QS11Beta15,QS11Alpha15,QS11Theta15,QS11Delta15, QS11Sig06015] = splitband(QS11O1);
[QS11Gamma16,QS11Beta16,QS11Alpha16,QS11Theta16,QS11Delta16, QS11Sig06016] = splitband(QS11O2);
[QS11Gamma17,QS11Beta17,QS11Alpha17,QS11Theta17,QS11Delta17, QS11Sig06017] = splitband(QS11Fz);
[QS11Gamma18,QS11Beta18,QS11Alpha18,QS11Theta18,QS11Delta18, QS11Sig06018] = splitband(QS11Cz);
[QS11Gamma19,QS11Beta19,QS11Alpha19,QS11Theta19,QS11Delta19, QS11Sig06019] = splitband(QS11Pz);


%% feature extraQS11tion for QS11 

QS11s1eQS11_bandsG1 = QS11Gamma1;
QS11s1eQS11_bandsB1 = QS11Beta1;
QS11s1eQS11_bandsA1 = QS11Alpha1;
QS11s1eQS11_bandsT1 = QS11Theta1;
QS11s1eQS11_bandsD1 = QS11Delta1;
QS11s2eQS11_bandsG2 = QS11Gamma2;
QS11s2eQS11_bandsB2 = QS11Beta2;
QS11s2eQS11_bandsA2 = QS11Alpha2;
QS11s2eQS11_bandsT2 = QS11Theta2;
QS11s2eQS11_bandsD2 = QS11Delta2;
QS11s3eQS11_bandsG3 = QS11Gamma3;
QS11s3eQS11_bandsB3 = QS11Beta3;
QS11s3eQS11_bandsA3 = QS11Alpha3;
QS11s3eQS11_bandsT3 = QS11Theta3;
QS11s3eQS11_bandsD3 = QS11Delta3;
QS11s4eQS11_bandsG4 = QS11Gamma4;
QS11s4eQS11_bandsB4 = QS11Beta4;
QS11s4eQS11_bandsA4 = QS11Alpha4;
QS11s4eQS11_bandsT4 = QS11Theta4;
QS11s4eQS11_bandsD4 = QS11Delta4;
QS11s5eQS11_bandsG5 = QS11Gamma5;
QS11s5eQS11_bandsB5 = QS11Beta5;
QS11s5eQS11_bandsA5 = QS11Alpha5;
QS11s5eQS11_bandsT5 = QS11Theta5;
QS11s5eQS11_bandsD5 = QS11Delta5;
QS11s6eQS11_bandsG6 = QS11Gamma6;
QS11s6eQS11_bandsB6 = QS11Beta6;
QS11s6eQS11_bandsA6 = QS11Alpha6;
QS11s6eQS11_bandsT6 = QS11Theta6;
QS11s6eQS11_bandsD6 = QS11Delta6;
QS11s7eQS11_bandsG7 = QS11Gamma7;
QS11s7eQS11_bandsB7 = QS11Beta7;
QS11s7eQS11_bandsA7 = QS11Alpha7;
QS11s7eQS11_bandsT7 = QS11Theta7;
QS11s7eQS11_bandsD7 = QS11Delta7;
QS11s8eQS11_bandsG8 = QS11Gamma8;
QS11s8eQS11_bandsB8 = QS11Beta8;
QS11s8eQS11_bandsA8 = QS11Alpha8;
QS11s8eQS11_bandsT8 = QS11Theta8;
QS11s8eQS11_bandsD8 = QS11Delta8;
QS11s9eQS11_bandsG9 = QS11Gamma9;
QS11s9eQS11_bandsB9 = QS11Beta9;
QS11s9eQS11_bandsA9 = QS11Alpha9;
QS11s9eQS11_bandsT9 = QS11Theta9;
QS11s9eQS11_bandsD9 = QS11Delta9;
QS11s10eQS11_bandsG10 = QS11Gamma10;
QS11s10eQS11_bandsB10 = QS11Beta10;
QS11s10eQS11_bandsA10 = QS11Alpha10;
QS11s10eQS11_bandsT10 = QS11Theta10;
QS11s10eQS11_bandsD10 = QS11Delta10;
QS11s11eQS11_bandsG11 = QS11Gamma11;
QS11s11eQS11_bandsB11 = QS11Beta11;
QS11s11eQS11_bandsA11 = QS11Alpha11;
QS11s11eQS11_bandsT11 = QS11Theta11;
QS11s11eQS11_bandsD11 = QS11Delta11;
QS11s12eQS11_bandsG12 = QS11Gamma12;
QS11s12eQS11_bandsB12 = QS11Beta12;
QS11s12eQS11_bandsA12 = QS11Alpha12;
QS11s12eQS11_bandsT12= QS11Theta12;
QS11s12eQS11_bandsD12 = QS11Delta12;
QS11s13eQS11_bandsG13 = QS11Gamma13;
QS11s13eQS11_bandsB13 = QS11Beta13;
QS11s13eQS11_bandsA13 = QS11Alpha13;
QS11s13eQS11_bandsT13 = QS11Theta13;
QS11s13eQS11_bandsD13 = QS11Delta13;
QS11s14eQS11_bandsG14 = QS11Gamma14;
QS11s14eQS11_bandsB14 = QS11Beta14;
QS11s14eQS11_bandsA14 = QS11Alpha14;
QS11s14eQS11_bandsT14 = QS11Theta14;
QS11s14eQS11_bandsD14 = QS11Delta14;
QS11s15eQS11_bandsG15 = QS11Gamma15;
QS11s15eQS11_bandsB15 = QS11Beta15;
QS11s15eQS11_bandsA15 = QS11Alpha15;
QS11s15eQS11_bandsT15 = QS11Theta15;
QS11s15eQS11_bandsD15 = QS11Delta15;
QS11s16eQS11_bandsG16 = QS11Gamma16;
QS11s16eQS11_bandsB16 = QS11Beta16;
QS11s16eQS11_bandsA16 = QS11Alpha16;
QS11s16eQS11_bandsT16 = QS11Theta16;
QS11s16eQS11_bandsD16 = QS11Delta16;
QS11s17eQS11_bandsG17 = QS11Gamma17;
QS11s17eQS11_bandsB17 = QS11Beta17;
QS11s17eQS11_bandsA17 = QS11Alpha17;
QS11s17eQS11_bandsT17 = QS11Theta17;
QS11s17eQS11_bandsD17 = QS11Delta17;
QS11s18eQS11_bandsG18 = QS11Gamma18;
QS11s18eQS11_bandsB18 = QS11Beta18;
QS11s18eQS11_bandsA18 = QS11Alpha18;
QS11s18eQS11_bandsT18 = QS11Theta18;
QS11s18eQS11_bandsD18 = QS11Delta18;
QS11s19eQS11_bandsG19 = QS11Gamma19;
QS11s19eQS11_bandsB19 = QS11Beta19;
QS11s19eQS11_bandsA19 = QS11Alpha19;
QS11s19eQS11_bandsT19 = QS11Theta19;
QS11s19eQS11_bandsD19 = QS11Delta19;
QS11extFP1G1=melcepst(QS11s1eQS11_bandsG1,125,'M',12,14,1024,93);
QS11extFP1B1=melcepst(QS11s1eQS11_bandsB1,125,'M',12,14,1024,93);
QS11extFP1A1=melcepst(QS11s1eQS11_bandsA1,125,'M',12,14,1024,93);
QS11extFP1T1=melcepst(QS11s1eQS11_bandsT1,125,'M',12,14,1024,93);
QS11extFP1D1=melcepst(QS11s1eQS11_bandsD1,125,'M',12,14,1024,93);
			 
QS11extFP2G2=melcepst(QS11s2eQS11_bandsG2,125,'M',12,14,1024,93);
QS11extFP2B2=melcepst(QS11s2eQS11_bandsB2,125,'M',12,14,1024,93);
QS11extFP2A2=melcepst(QS11s2eQS11_bandsA2,125,'M',12,14,1024,93);
QS11extFP2T2=melcepst(QS11s2eQS11_bandsT2,125,'M',12,14,1024,93);
QS11extFP2D2=melcepst(QS11s2eQS11_bandsD2,125,'M',12,14,1024,93);
			   
QS11extFP3G3=melcepst(QS11s3eQS11_bandsG3,125,'M',12,14,1024,93);
QS11extFP3B3=melcepst(QS11s3eQS11_bandsB3,125,'M',12,14,1024,93);
QS11extFP3A3=melcepst(QS11s3eQS11_bandsA3,125,'M',12,14,1024,93);
QS11extFP3T3=melcepst(QS11s3eQS11_bandsT3,125,'M',12,14,1024,93);
QS11extFP3D3=melcepst(QS11s3eQS11_bandsD3,125,'M',12,14,1024,93);
			   
QS11extFP4G4=melcepst(QS11s4eQS11_bandsG4,125,'M',12,14,1024,93);
QS11extFP4B4=melcepst(QS11s4eQS11_bandsB4,125,'M',12,14,1024,93);
QS11extFP4A4=melcepst(QS11s4eQS11_bandsA4,125,'M',12,14,1024,93);
QS11extFP4T4=melcepst(QS11s4eQS11_bandsT4,125,'M',12,14,1024,93);
QS11extFP4D4=melcepst(QS11s4eQS11_bandsD4,125,'M',12,14,1024,93);
QS11extFP5G5=melcepst(QS11s5eQS11_bandsG5,125,'M',12,14,1024,93);
QS11extFP5B5=melcepst(QS11s5eQS11_bandsB5,125,'M',12,14,1024,93);
QS11extFP5A5=melcepst(QS11s5eQS11_bandsA5,125,'M',12,14,1024,93);
QS11extFP5T5=melcepst(QS11s5eQS11_bandsT5,125,'M',12,14,1024,93);
QS11extFP5D5=melcepst(QS11s5eQS11_bandsD5,125,'M',12,14,1024,93);
QS11extFP6G6=melcepst(QS11s6eQS11_bandsG6,125,'M',12,14,1024,93);
QS11extFP6B6=melcepst(QS11s6eQS11_bandsB6,125,'M',12,14,1024,93);
QS11extFP6A6=melcepst(QS11s6eQS11_bandsA6,125,'M',12,14,1024,93);
QS11extFP6T6=melcepst(QS11s6eQS11_bandsT6,125,'M',12,14,1024,93);
QS11extFP6D6=melcepst(QS11s6eQS11_bandsD6,125,'M',12,14,1024,93);
QS11extFP7G7=melcepst(QS11s7eQS11_bandsG7,125,'M',12,14,1024,93);
QS11extFP7B7=melcepst(QS11s7eQS11_bandsB7,125,'M',12,14,1024,93);
QS11extFP7A7=melcepst(QS11s7eQS11_bandsA7,125,'M',12,14,1024,93);
QS11extFP7T7=melcepst(QS11s7eQS11_bandsT7,125,'M',12,14,1024,93);
QS11extFP7D7=melcepst(QS11s7eQS11_bandsD7,125,'M',12,14,1024,93);
QS11extFP8G8=melcepst(QS11s8eQS11_bandsG8,125,'M',12,14,1024,93);
QS11extFP8B8=melcepst(QS11s8eQS11_bandsB8,125,'M',12,14,1024,93);
QS11extFP8A8=melcepst(QS11s8eQS11_bandsA8,125,'M',12,14,1024,93);
QS11extFP8T8=melcepst(QS11s8eQS11_bandsT8,125,'M',12,14,1024,93);
QS11extFP8D8=melcepst(QS11s8eQS11_bandsD8,125,'M',12,14,1024,93);
QS11extFP9G9=melcepst(QS11s9eQS11_bandsG9,125,'M',12,14,1024,93);
QS11extFP9B9=melcepst(QS11s9eQS11_bandsB9,125,'M',12,14,1024,93);
QS11extFP9A9=melcepst(QS11s9eQS11_bandsA9,125,'M',12,14,1024,93);
QS11extFP9T9=melcepst(QS11s9eQS11_bandsT9,125,'M',12,14,1024,93);
QS11extFP9D9=melcepst(QS11s9eQS11_bandsD9,125,'M',12,14,1024,93);
QS11extFP10G10=melcepst(QS11s10eQS11_bandsG10,125,'M',12,14,1024,93);
QS11extFP10B10=melcepst(QS11s10eQS11_bandsB10,125,'M',12,14,1024,93);
QS11extFP10A10=melcepst(QS11s10eQS11_bandsA10,125,'M',12,14,1024,93);
QS11extFP10T10=melcepst(QS11s10eQS11_bandsT10,125,'M',12,14,1024,93);
QS11extFP10D10=melcepst(QS11s10eQS11_bandsD10,125,'M',12,14,1024,93);
QS11extFP11G11=melcepst(QS11s11eQS11_bandsG11,125,'M',12,14,1024,93);
QS11extFP11B11=melcepst(QS11s11eQS11_bandsB11,125,'M',12,14,1024,93);
QS11extFP11A11=melcepst(QS11s11eQS11_bandsA11,125,'M',12,14,1024,93);
QS11extFP11T11=melcepst(QS11s11eQS11_bandsT11,125,'M',12,14,1024,93);
QS11extFP11D11=melcepst(QS11s11eQS11_bandsD11,125,'M',12,14,1024,93);
QS11extFP12G12=melcepst(QS11s12eQS11_bandsG12,125,'M',12,14,1024,93);
QS11extFP12B12=melcepst(QS11s12eQS11_bandsB12,125,'M',12,14,1024,93);
QS11extFP12A12=melcepst(QS11s12eQS11_bandsA12,125,'M',12,14,1024,93);
QS11extFP12T12=melcepst(QS11s12eQS11_bandsT12,125,'M',12,14,1024,93);
QS11extFP12D12=melcepst(QS11s12eQS11_bandsD12,125,'M',12,14,1024,93);
QS11extFP13G13=melcepst(QS11s13eQS11_bandsG13,125,'M',12,14,1024,93);
QS11extFP13B13=melcepst(QS11s13eQS11_bandsB13,125,'M',12,14,1024,93);
QS11extFP13A13=melcepst(QS11s13eQS11_bandsA13,125,'M',12,14,1024,93);
QS11extFP13T13=melcepst(QS11s13eQS11_bandsT13,125,'M',12,14,1024,93);
QS11extFP13D13=melcepst(QS11s13eQS11_bandsD13,125,'M',12,14,1024,93);
QS11extFP14G14=melcepst(QS11s14eQS11_bandsG14,125,'M',12,14,1024,93);
QS11extFP14B14=melcepst(QS11s14eQS11_bandsB14,125,'M',12,14,1024,93);
QS11extFP14A14=melcepst(QS11s14eQS11_bandsA14,125,'M',12,14,1024,93);
QS11extFP14T14=melcepst(QS11s14eQS11_bandsT14,125,'M',12,14,1024,93);
QS11extFP14D14=melcepst(QS11s14eQS11_bandsD14,125,'M',12,14,1024,93);
QS11extFP15G15=melcepst(QS11s15eQS11_bandsG15,125,'M',12,14,1024,93);
QS11extFP15B15=melcepst(QS11s15eQS11_bandsB15,125,'M',12,14,1024,93);
QS11extFP15A15=melcepst(QS11s15eQS11_bandsA15,125,'M',12,14,1024,93);
QS11extFP15T15=melcepst(QS11s15eQS11_bandsT15,125,'M',12,14,1024,93);
QS11extFP15D15=melcepst(QS11s15eQS11_bandsD15,125,'M',12,14,1024,93);
QS11extFP16G16=melcepst(QS11s16eQS11_bandsG16,125,'M',12,14,1024,93);
QS11extFP16B16=melcepst(QS11s16eQS11_bandsB16,125,'M',12,14,1024,93);
QS11extFP16A16=melcepst(QS11s16eQS11_bandsA16,125,'M',12,14,1024,93);
QS11extFP16T16=melcepst(QS11s16eQS11_bandsT16,125,'M',12,14,1024,93);
QS11extFP16D16=melcepst(QS11s16eQS11_bandsD16,125,'M',12,14,1024,93);
QS11extFP17G17=melcepst(QS11s17eQS11_bandsG17,125,'M',12,14,1024,93);
QS11extFP17B17=melcepst(QS11s17eQS11_bandsB17,125,'M',12,14,1024,93);
QS11extFP17A17=melcepst(QS11s17eQS11_bandsA17,125,'M',12,14,1024,93);
QS11extFP17T17=melcepst(QS11s17eQS11_bandsT17,125,'M',12,14,1024,93);
QS11extFP17D17=melcepst(QS11s17eQS11_bandsD17,125,'M',12,14,1024,93);
QS11extFP18G18=melcepst(QS11s18eQS11_bandsG18,125,'M',12,14,1024,93);
QS11extFP18B18=melcepst(QS11s18eQS11_bandsB18,125,'M',12,14,1024,93);
QS11extFP18A18=melcepst(QS11s18eQS11_bandsA18,125,'M',12,14,1024,93);
QS11extFP18T18=melcepst(QS11s18eQS11_bandsT18,125,'M',12,14,1024,93);
QS11extFP18D18=melcepst(QS11s18eQS11_bandsD18,125,'M',12,14,1024,93);
QS11extFP19G19=melcepst(QS11s19eQS11_bandsG19,125,'M',12,14,1024,93);
QS11extFP19B19=melcepst(QS11s19eQS11_bandsB19,125,'M',12,14,1024,93);
QS11extFP19A19=melcepst(QS11s19eQS11_bandsA19,125,'M',12,14,1024,93);
QS11extFP19T19=melcepst(QS11s19eQS11_bandsT19,125,'M',12,14,1024,93);
QS11extFP19D19=melcepst(QS11s19eQS11_bandsD19,125,'M',12,14,1024,93);



%% ALL Beta

QS11AALPHA = [QS11extFP1A1;QS11extFP2A2;QS11extFP3A3; QS11extFP4A4;QS11extFP5A5;QS11extFP6A6;QS11extFP7A7;QS11extFP8A8;QS11extFP9A9;QS11extFP10A10;QS11extFP11A11;QS11extFP12A12;QS11extFP13A13;QS11extFP14A14;QS11extFP15A15;QS11extFP16A16;QS11extFP17A17;QS11extFP18A18;QS11extFP19A19];


%%set expected output


QS11AALPHA(:,13)=0;
QS11AALPHA(:,14)=0;


%MLPV Call
function [y,tgtestS,perAcc,out,ts,perf,time,netVA] = MLPVA(randomSig,QS11AALPHA);

trainS=randomSig(:,1:12);
tgtrainS=randomSig(:,13:14);
testS=QS11AALPHA(:,1:12); 
tgtestS=QS11AALPHA(:,13:14);


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
