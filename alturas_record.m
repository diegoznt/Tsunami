%% Chañaral_Cl
a=readmatrix('Chañaral.txt')
c1=a(1:121,2)
chana=load('ts_record0001.dat')
sinpend1=detrend(c1,3)
ch=chana(1:60:end)

fecha_inicio1 = datetime(2015,9,16,22,54,0,0); %aqui me lee las fechas
fecha_fin1 = datetime(2015,9,17,00,54,0,0)

time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos
x=[0:120]
figure()
subplot(3,1,1)
plot(x,sinpend1,'k','LineWidth',1.5)
hold on
plot(x,ch,'r','LineWidth',1.5)
% xlabel('Time [minutes]','Fontsize',10)
ylabel('Amplitude [m]','Fontsize',10)
% ylim([-2 2])
% datetick('x','HH')
title('Station Chañaral\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
legend('Tide gauge','Simulation','Location','northwest')
grid on

% %%Corr 
% plot(ch(1:84))
% [r1,lag1]=xcorr(ch(1:45),sinpend1(1:45),'normalized')
% r=corrcoef(ch(1:45),sinpend1(1:45))
% plot(lag1,r1)

%41-14=27 dif


%% Caldera
c2=readmatrix('Caldera_CL.txt')

cal1=c2(1:121,2)
cal2=load('ts_record0002.dat')
sinpend2=detrend(cal1,3)
ca=cal2(1:60:end)


% sinpend2=detrend(c2(:,2),5)
% el mismo time de chañaral
%time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos

% figure()
subplot(3,1,2)
plot(x,sinpend2,'k','LineWidth',1.5)
hold on
plot(x,ca,'r','LineWidth',1.5)
% xlabel('Time [min]','Fontsize',10)
ylabel('Amplitude [m]','Fontsize',10)
% ylim([-2 2])
% datetick('x','HH')
title('Station Caldera\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
grid on
legend('Tide gauge','Simulation','Location','northwest')
axis tight
% 5 minutos de diferencia en la primera llegada de ola
% [r2,lag2]=xcorr(ca(1:72),sinpend2(1:72)) %cruzada
% ere2=corrcoef(ca(1:72),sinpend2(1:72)) %lineal
% plot(lag2,r2)

%% Huasco OJO  a las fechas de inicio 22:19:10

% c3=readmatrix('Huasco.txt')
% 
% sinpend3=detrend(c3(:,2),4)
% 
% fecha_inicio1 = datetime(2015,9,16,22,54,0,0); %aqui me lee las fechas
% fecha_fin1 = datetime(2015,9,17,10,53,0,0)
% 
% time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time
% 
% figure()
% plot(time,sinpend3,'k','LineWidth',1)
% hold on
% plot(time,c3(:,2)-1.99)
% % hold on
% % plot(time,modelo,'r','LineWidth',1)
% xlabel('Horas','Fontsize',10)
% ylabel('Nivel del Mar [m]','Fontsize',10)
% % ylim([-2 2])
% datetick('x','HH')
% title('Estación Huasco','FontSize',10)
% set(gcf,'color','w')  % color de fondo grafico
% set(gca,'FontSize',10)  % tamaño de numeros 
% grid on
% 





%% Coquimbo
c4=readmatrix('Coquimbo_CL.txt')
%% Esto para probar las tendencias for time serie comience desde cero
% primero sacamos tendencia de un polinomio de alto grado y luego de 1
% plot(caldera(:,2),'r')
% hold on
coq=c4(1:121,2)
sinpend4=detrend(coq,3)
coq2=load('ts_record0003.dat')
coquimb=coq2(1:60:end)

% Mismo time que chaña

% sinpend1=detrend(sinpend,1)
% plot(caldera(:,3),'b')
% sinpend2=detrend(caldera(:,3))
% 
% plot(sinpend,'c','LineWidth',2)
% plot(sinpend,'k')

% fecha_inicio1 = datetime(2015,9,15,22,0,0,0); %aqui me lee las fechas
% fecha_fin1 = datetime(2015,9,16,10,0,0,0)
% 
% time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos
% p=polyfit([1:720],caldera(:,2),3)
% pol=polyval(p,[1:720])
% plot([1:720],pol)


% %% Esta es la señal original con el ajuste (interesante de mostrar?? metodologia?)
% sinpend=detrend(caldera(:,2),5)
% plot(time,caldera(:,2))
% hold on
% plot(time,caldera(:,2)-sinpend,'r')
% El que mejor se ajusta es el polinomio de grado 5 a las oscilaciones de marea
% Utilizamos detrend, lo mismo se podría lograr con polyfit y poliva
%Graf definitivo
subplot(3,1,3)
plot(x,sinpend4,'k','LineWidth',1.5)
hold on
plot(x,coquimb,'r','LineWidth',1.5)
xlabel('Time [minutes]','Fontsize',12)
ylabel('Amplitude [m]','Fontsize',10)
% ylim([-2 2])
title('Station Coquimbo\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
grid on
legend('Tide gauge','Simulation','Location','northwest')
axis tight
% [r3,lag3]=xcorr(coquimb(1:55),sinpend4(1:55)) %cruzada
% ere3=corrcoef(coquimb(1:55),sinpend4(1:55)) %lineal
% plot(lag3,r3)


% legend('Datos observados','Modelo')


% %% Quintero
% c5=readmatrix('Quintero.txt')
% 
% sinpend5=detrend(c5(:,2),5)
% 
% 
% fecha_inicio1 = datetime(2015,9,16,22,19,0,0); %aqui me lee las fechas
% fecha_fin1 = datetime(2015,9,16,10,19,0)
% 
% time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos
% figure(1)
% plot(time,sinpend5,'k','LineWidth',1)
% hold on
% plot(time,c5(:,2)-1.99)
% % hold on
% % plot(time,modelo,'r','LineWidth',1)
% xlabel('Horas','Fontsize',10)
% ylabel('Nivel del Mar [m]','Fontsize',10)
% % ylim([-2 2])
% datetick('x','HH')
% title('Estación Quintero\_CL','FontSize',10)
% set(gcf,'color','w')  % color de fondo grafico
% set(gca,'FontSize',10)  % tamaño de numeros 
% grid on


%% 

%% San Antonio
c6=readmatrix('San_Antonio.txt')


sanan=c6(1:121,2)
sinpend6=detrend(sanan,2)
antoni=load('ts_record0004.dat')
sannantoni=antoni(1:60:end)



figure()
subplot(3,1,1)
plot(x,sinpend6,'k','LineWidth',1.5)
hold on
plot(x,sannantoni,'r','LineWidth',1.5)
ylabel('Amplitude [m]','Fontsize',10)
title('Station San Antonio\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
grid on
legend('Tide gauge','Simulation','Location','northwest','Fontsize',10)
legend('boxoff')
axis tight

% [r4,lag4]=xcorr(sannantoni(1:53),sinpend6(1:53)) %cruzada
% ere4=corrcoef(sannantoni(1:53),sinpend6(1:53)) %lineal
% plot(lag4,r4)
%% Constitución 
c7=readmatrix('Constitucion.txt')

consti=c7(1:121,2)
sinpend7=detrend(consti,2)
cons=load('ts_record0005.dat')
constitucion=cons(1:60:end)


fecha_inicio3 = datetime(2015,9,16,22,22,0,0); %aqui me lee las fechas
fecha_fin3 = datetime(2015,9,17,00,22,0)

time3=fecha_inicio3:minutes(1):fecha_fin3  %sera el mismo time para todos los datos
subplot(3,1,2)
plot(x,sinpend7,'k','LineWidth',1.5)
hold on
plot(x,constitucion,'r','LineWidth',1.5)

ylabel('Amplitude [m]','Fontsize',10)

title('Station Constitucion\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
grid on
legend('Tide gauge','Simulation','Location','northwest','Fontsize',10)
legend('boxoff')
axis tight

% [r5,lag5]=xcorr(constitucion(1:53),sinpend7(1:53)) %cruzada
% ere5=corrcoef(constitucion(1:53),sinpend7(1:53)) %lineal
% plot(lag5,r5)
%% Talcahuano 
c8=readmatrix('Talcahuano.txt')

tal=c8(1:121,3)
sinpend8=detrend(tal,2)
talc=load('ts_record0006.dat')
thno=talc(1:60:end)


subplot(3,1,3)
plot(x,sinpend8,'k','LineWidth',1.5)
hold on
plot(x,thno,'r','LineWidth',1.5)

xlabel('Time [min]','Fontsize',10)
ylabel('Amplitude [m]','Fontsize',10)

title('Station Talcahuano\_CL','FontSize',12)
set(gcf,'color','w')  % color de fondo grafico
set(gca,'FontSize',10)  % tamaño de numeros 
grid on
legend('Tide gauge','Simulation','Location','northwest','Fontsize',10)
legend('boxoff')
axis tight

% [r6,lag6]=xcorr(thno,sinpend8) %cruzada
% ere6=corrcoef(thno,sinpend8) %lineal
% plot(lag6,r6)

% %% Boya San Felix 
% 
% c9=readmatrix('San_Felix_BOYA.txt')
% 
% sinpend9=detrend(c9(:,2),5)
% 
% 
% fecha_inicio1 = datetime(2015,9,16,22,19,0,0); %aqui me lee las fechas
% fecha_fin1 = datetime(2015,9,17,10,19,0)
% 
% time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos
% figure()
% plot(time,sinpend9,'k','LineWidth',1)
% hold on
% plot(time,c9(:,2)-1.99)
% % hold on
% % plot(time,modelo,'r','LineWidth',1)
% xlabel('Horas','Fontsize',10)
% ylabel('Nivel del Mar [m]','Fontsize',10)
% % ylim([-2 2])
% datetick('x','HH')
% title('Estación Talcahuano\_CL','FontSize',10)
% set(gcf,'color','w')  % color de fondo grafico
% set(gca,'FontSize',10)  % tamaño de numeros 
% grid on
% 
% 
% 
% %% Juan_fernandez
% 
% 
% c10=readmatrix('San_Felix_BOYA.txt')
% 
% sinpend10=detrend(c10(:,2),5)
% 
% 
% fecha_inicio1 = datetime(2015,9,16,22,54,0,0); %aqui me lee las fechas
% fecha_fin1 = datetime(2015,9,17,10,53,0,0)
% 
% time=fecha_inicio1:minutes(1):fecha_fin1  %sera el mismo time para todos los datos
% figure()
% plot(time,sinpend10,'k','LineWidth',1)
% hold on
% plot(time,c10(:,2)-1.99)
% % hold on
% % plot(time,modelo,'r','LineWidth',1)
% xlabel('Horas','Fontsize',10)
% ylabel('Nivel del Mar [m]','Fontsize',10)
% % ylim([-2 2])
% datetick('x','HH')
% title('Juan_Fenandez station ','FontSize',10)
% set(gcf,'color','w')  % color de fondo grafico
% set(gca,'FontSize',10)  % tamaño de numeros 
% grid on
% 
% 
% 
% 
% 

%% Interesante que un polinomio de grado 5 es casi lo mismo que uno de grado 10 

%%Desafio hacer mapa con cada señal superpuesta en mapa con ubicación de las
%estaciones


