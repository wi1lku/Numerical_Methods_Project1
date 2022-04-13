function val = valueLegendre(A, x)
% Funkcja wyliczająca wartość wielomianu w bazie Legendre'a
%
% autor: Piotr Wilczyński
% PW, MIiN, IiAD, MN
%
% INPUT:
%   A <- tablica współczynników [a_{0}, a_{1}, ..., a_{n}] wielomianu
%   x <- funkcja oblicza wartosć w punkcie x
% OUTPUT:
%   val <- wartość wielominau Legendre'a o współczynnikach A w punkcie x

    % wyznaczanie stopnia wielomianu n
    n = length(A) - 1; 

    % implementacja zoptymalizowanego algorytmu Clenshawa dla
    % wielomianów w bazie Legendre'a (opis w raporcie)
    Bprevprev = 0;
    Bprev = A(n+1);
    for k = (n-1):-1:0
        B = A(k+1) + ((2*k+1)/(k+1))*x*Bprev - ((k+1)/(k+2))*Bprevprev;
        Bprevprev = Bprev;
        Bprev = B;
    end

    % zwrócenie wartości wielomianu w punkcie x
    val = B;
end