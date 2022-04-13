function val = simpsonIntegral(a, b, N, A)
% Funkcja wyliczająca wartość całki na przedziale [a,b],
% w której funkcją podcałkową jest wielomian w bazie Legendre'a.
% Funkcja używa złożonej kwadratury Simpsona
% Do wyliczania wartości wielomianu w punkcie x funkcja
% używa funkcji valueLegendre(A, x)
%
% autor: Piotr Wilczyński
% PW, MIiN, IiAD, MN
%
% INPUT:
%   a <- początek przedziału całkowania
%   b <- koniec przedziału całkowania
%   N <- liczba podprzedziałów
%   A <- tablica współczynników [a_{0}, a_{1}, ..., a_{n}] wielomianu
% OUTPUT:
%   val <- wartość całki, w której funkcją podcałkową
%          jest wielomian w bazie Legendre'a na przedziale [a,b], 

    val = 0;

    % wyznaczenie długości przedzialu H
    H = (b-a)/N;

    % będziemy implementować w kolejnych krokach kwadraturę Simpsona:
    % val = (H/6)*(f(a)+f(b)+(sum_{k=1}^{N-1} 2f(a+kH))+(sum_{k=0}^{N-1}4f(a+kH+H/2))

    % val = sum_{k=1}^{N-1} (2f(a+kh)+4f(a+kh+H/2))
    for k = 1:(N-1)
        val = val+2*valueLegendre(A, a+k*H)+4*valueLegendre(A, a+k*H+H/2);
    end

    % val = val + f(a) + f(b) + 4f(a, a+ H/2)
    val = val + valueLegendre(A, a) + valueLegendre(A, b) + 4*valueLegendre(A, a+H/2);

    % val = Hval/6
    val = H*val/6;
end