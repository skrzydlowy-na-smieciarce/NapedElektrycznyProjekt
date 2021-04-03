%% Regulatory ciagłe
% Ważne: ze wzgledu na kolizje oznaczeń zakomentować to co nie "idzie" do
% simulinka

%% Transmitancja twornika silnika (nie silnika, to co innego, to jest tylko pomocne dla regulatorów)
B=J*Rt/(psi_en^2);
T=Lt/Rt;
T1=0.5*B*(1-sqrt(1-4*T/B));
B1=B-T1;
beta=lambda/p;
% transmitancja twornika silnika (z uwzglednieniem momentu bezwładności
% obciążenia
% poniższa transmitancja jest niepotrzebna, może mylić, jest tylko do
% wyznaczania parametrów regulatora
%Gt=tf([B], Rt.*conv([B1 1], [T1 1])) %  RECZNIE SPRAWDZIC WYNIK

%% Parametry regulatora prądu P
pradu_P;

%% Parametry regulatora prądu PI

%% Parametry regulatora predkości P
statyzm=0.02*omega_n;
predkosci_P

%% Parametry regulatora predkości PI
