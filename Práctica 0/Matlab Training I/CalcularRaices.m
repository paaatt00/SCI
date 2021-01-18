function [solucion, reales, complejas] = CalcularRaices(poli_1, poli_2)

reales = 0;
complejas = 0;

% Producto de los polinomios p1 y p2
prod_poli = conv(poli_1,poli_2);

% Apartado b: Solicitar al usuario que indique si la solucion se aplica a uno de los polinomios o al producto de ambos.
opcion = input('Indica a qué polinomio se aplica la solución: polinomio1 (1), polinomio2 (2) o producto de polinomios (3): ');
disp("Polinomio 1: ");
disp(poli_1);
disp("Polinomio 2: ");
disp(poli_2);
disp("Producto de polinomios: ");
disp(prod_poli);

% Calcula las raices del polinomio
if opcion == '1'
    solucion = roots(poli_1);
elseif opcion == '2'
    solucion = roots(poli_2);
else
    solucion = roots(prod_poli);
end
disp("Solucion: ");
disp(solucion);

% Apartado c: Devolver las raices del polinomio y la clasificacion del mismo (nº raices reales y nº raices complejas).
for i = 1:size(solucion)
    if isreal(solucion(i))
        reales = reales + 1;
    else 
        complejas = complejas + 1;
    end
end
disp("Raíces reales: " + reales);
disp("Raíces complejas: " + complejas);

% Apartado d: Representa en el plano complejo la ubicación de las raíces obtenidas. 
figure('Name','Ubicación de raíces obtenidas','NumberTitle','off');
hold on
plot(solucion,'rx')
xlabel('Raíz real')
ylabel('Raíz compleja')
hold off
end

