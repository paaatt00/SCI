function [matriz] = IntroducirMatriz(dimensiones)
random = input("Si desea que los numeros se generen aleatoriamente, teclee 'r', sino 'd': ");
if (random == 'r')
    if (length(dimensiones) == 1)
        matriz = randn(dimensiones);
    elseif (length(dimensiones) == 2)
        matriz = randn(dimensiones(1,1),dimensiones(1,2));
    else
        disp("Las dimensiones no son correctas.");
    end
elseif (random == 'd')
    if (length(dimensiones) == 1)
        matriz = zeros(dimensiones(1,1));
        for i = (1:dimensiones(1,1))
            for j = (1:dimensiones(1,1))
                 numero = input("Escriba el valor: ");
                matriz(i,j) = numero;
            end
        end
    elseif (length(dimensiones) == 2)
        matriz = zeros(dimensiones(1,1),dimensiones(1,2));
        for i = (1:dimensiones(1,1))
            for j = (1:dimensiones(1,2))
                numero = input("Escriba el valor: ");
                matriz(i,j) = numero;
            end
        end
    else
        disp("Las dimensiones no son correctas");
    end
else
    disp("ERROR");
end
end

