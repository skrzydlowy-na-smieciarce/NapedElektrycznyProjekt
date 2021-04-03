%% Dane projektu 
% Plik, skrypt ten w założeniu ma się atomatycznie wczytywać po uruchomieniu
% projektu

% Ważne: ze wzgledu na kolizje oznaczeń zakomentować to co nie "idzie" do
% simulinka

%% Dane silnika
Pn=17; % [kW] !!
nn=1500; % [obr/min]
Un=220; % [V]
In=88; % [A]
Js=0.275; % [kgm2]
Rt=0.15; % [Ohm]
Lt=0.01875; % [H]
omega_n=nn*2*pi/60;
psi_en=(Un-Rt*In)/omega_n; % [Wb]
Mn=psi_en*In; % [Nm]
% przyjete dane
lambda=2;
p=50;
% Ograniczenia
Imax = lambda*In;
dIdtmax = p*In;
omega_max = omega_n;

%% Regulatory ciągłe
% założone dane
Y=10/(2.5*In);
Kt=10/(1.2*omega_n);
Kp=0.15*Un;
J=6; %[kgm2]
% obliczenia potrzebne do simulinka
regulatory_ciagle % uruchomienie skryptu regulatory_ciagle.m

%% Regulatory dyskretne

%% Przekształtnik tyrystorowy
