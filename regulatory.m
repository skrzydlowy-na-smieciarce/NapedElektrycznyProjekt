%% Regulatory ciagłe
% Ważne: ze wzgledu na kolizje oznaczeń zakomentować to co nie "idzie" do
% simulinka

%% Parametry silnika i przekształtnika tyrystorowqego
B=J*Rt/(psi_en^2);
T=Lt/Rt;
beta=2*tau0;
kz=1/Y;

%% Przekształtnik tyrystorowy
Gprzeksztaltnika=tf(kz, [beta, 1])


%% Parametry regulatora prądu PI
KRi = T*Rt/(2*Kp*Y*tau0);
TRi = T;
Gpradu=tf([KRi*TRi KRi], [TRi 0])


%% Parametry regulatora predkości P
Komega=Mn/(psi_en*kz*Kt*statyzm);

%% Parametry regulatora predkości PI
Komega=J/(2*Kt*kz*beta*psi_en)/10
Tr_pred=4*beta;
Gpred=tf([Komega*Tr_pred Komega], [Tr_pred 0])

%% Filtr wejściowy
Gf=tf([1], [4*beta 1])