function []=cambiagrilla(malla,nx,ny)
%% Este es el que usamos para Tohoku
%% Cuando la malla esta de nor a sur y este a oeste, la salida es
%% oeste-este y sur-norte; +z es mar

malla0 = malla ;

malla_1 = [];
malla_2 = [];
malla_3 = [];

for i1 = 1:nx:length(malla0)-(nx-1)
    malla_1 = [malla_1; malla0(i1:i1+(nx-1),1)'];
    malla_2 = [malla_2; malla0(i1:i1+(nx-1),2)'];
    malla_3 = [malla_3; malla0(i1:i1+(nx-1),3)'];
end

salida1 = [];
salida2 = [];
salida3 = [];
for i2 = ny:-1:1
    salida1 = [salida1;malla_1(i2,:)'];
    salida2 = [salida2;malla_2(i2,:)'];
    salida3 = [salida3;malla_3(i2,:)'];
end

salida = [salida1 salida2 -1*salida3];

fid = fopen('malla_salida.xyz','w+');

for i1 = 1:length(salida)
	fprintf(fid,'%12.6f %15.6f %15.4f\n',salida(i1,:));
end

fclose(fid)

end