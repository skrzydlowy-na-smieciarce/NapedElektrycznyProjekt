%% Regulator prądu typu P ciagły

kz=(B1-beta)/(Y*B1);
m=T1;
V=beta*(Y*Kp*B)/((B1-beta)*Rt);

% ograniczenia
u_z0=lambda*In*Y*B1/(B1-beta);

Gain1=0;