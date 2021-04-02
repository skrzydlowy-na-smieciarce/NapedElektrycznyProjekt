%% Matematyczny model transmitancji silnika

% wypisane transmitancje ze strony 6
% transmitancje wypisuje w postaci symbolicznej, a nastepnie konwertuje do
% tf "control system"

B=J*Rt/(psi_en^2);
T=Lt/Rt;

% transmitancje, Mianownik wszedzie jest taki sam 
syms s

Gden = vpa(B*T*s^2+B*s+1, 3) % mianownik
GwUnum = vpa(1/psi_en, 3) % licznik 
GwU = syms2tf(GwUnum/Gden)

GwMnum = vpa(Rt*(T*s+1)/(psi_en^2), 3)
GwM = syms2tf(GwMnum/Gden)

GIUnum = vpa(B/Rt*s, 3) % licznik 
GIU = syms2tf(GIUnum/Gden)

GIMnum = vpa(1/psi_en, 3)
GIM = syms2tf(GIMnum/Gden)

%% Teraz te skoki jednostkowe
% Chyba chodzi o GwU i GwI, a pochodna prądu to GwI*s (s to idealny  człon
% różniczkujący)

figure(1)
step(GIU)
title("Odpowiedz skokowa prądu");

figure(2)
GIUderivate = syms2tf(GIUnum/Gden*s);
step(GIUderivate)
title("Odpowiedz skokowa pochodnej prądu");

figure(3)
step(GwU)
title("Odpowiedz skokowa prędkości obrotowej");


