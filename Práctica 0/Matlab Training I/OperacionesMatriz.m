function [traspuestaA, traspuestaB, inversaA, inversaB, determinanteA, rangoA, determinanteB, rangoB, prodMat, prodElem, concFilas, concColumnas] = OperacionesMatriz(A, B)
disp('La matriz A es')
A
disp('La matriz B es')
B
tamA = size(A);
tamB = size(B);
    % Traspuesta de A y de B
traspuestaA = A.'
traspuestaB = B.'

    % Inversa de A y B
if (tamA(1,1)~=tamA(1,2))
    disp('No se puede realizar la inversa de A')
    disp(' ')
else
    inversaA = inv(A)
end
if (tamB(1,1)~=tamB(1,2))
    disp('No se puede realizar la inversa de B')
    disp(' ')
else
    inversaB = inv(B)
end

    % Determinante y rango de A y B
rangoA = rank(A)
rangoB = rank(B)
if (tamA(1,1)~=tamA(1,2))
    disp('No se puede realizar el determinante de A')
    disp(' ')
else
    determinanteA = det(A)
end

if (tamB(1,1)~=tamB(1,2))
    disp('No se puede realizar el determinante de B')
    disp(' ')
else
    determinanteB = det(B)
end

    % Producto matricial de A y B
if (tamA(1:2)~=tamB(1,1))
    disp('No se puede realizar el producto matricial')
    disp(' ')
else
    prodMat = A*B
end

    % Producto elemento a elemento de la primera columna de A y la primera columna de B
if (tamA(1:2)~=tamB(1,1))
    disp('No se puede realizar el producto elemento a elemento')
else
    prodElem = A.*B
end

    % Vector fila obtenido concatenando las primeras filas de A y de B
concFilas = [A(1,:) B(1,:)]

    % Vector columna obtenido concatenando las primeras columnas de A y de B
concColumnas = [A(:,1); B(:,1)]
end

