% Przykłady użycia funckji simpsonIntegral()

format long;

% Przykład 1
% a = -1
% b = 1
% A = [4/3, 1, 2/3]

disp("Przykład 1");
disp("a = -1");
disp("b = 1");
disp("A = [4/3, 1, 2/3]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(-1, 1, 1, [4/3, 1, 2/3]));

for N = 1:100
    Values(N) = simpsonIntegral(-1, 1, N, [4/3, 1, 2/3]);
end

% odkomentować, aby wyświetlić wykres
% plot(1:100, Values);

disp("----------")

% Przykład 2
% a = 0
% b = 5
% A = [1, 1, 1, 1]

disp("Przykład 2");
disp("a = 0");
disp("b = 5");
disp("A = [1, 1, 1, 1]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(0, 5, 1, [1, 1, 1, 1]))

for N = 1:100
    Values(N) = simpsonIntegral(0, 5, N, [1, 1, 1, 1]);
end

% odkomentować, aby wyświetlić wykres
% plot(1:100, Values);

disp("----------")

% Przykład 3
% a = 0
% b = 5
% A = [0, 0, 0, 1, 1]

disp("Przykład 3");
disp("a = -4");
disp("b = -1");
disp("A = [0, 0, 0, 1, 1]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(-4, -1, 1, [0, 0, 0, 1, 1]))

for N = 1:100
    Values(N) = simpsonIntegral(-4, -1, N, [0, 0, 0, 1, 1]);
    Error(N) = -567/(64*N^4);
end

% odkomentować, aby wyświetlić wykres
% plot(1:100, Values);
% hold;
% plot(1:100, 669.375 - Error);

disp("----------")

% Przykład 4
% a =-3
% b = 3
% A = [0, 27/63, 0, 28/63, 0, 8/63]

disp("Przykład 4");
disp("a = -3");
disp("b = -3");
disp("A = [0, 27/63, 0, 28/63, 0, 8/63]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(-3, 3, 1, [0, 27/63, 0, 28/63, 0, 8/63]))


for N = 1:100
    Values(N) = simpsonIntegral(-3, 3, N, [0, 27/63, 0, 28/63, 0, 8/63]);
    
end

% odkomentować, aby wyświetlić wykres
% plot(1:100, Values);

disp("----------")

% Przykład 5
% a = 0
% b = 2
% A = [0, 0, 0, 0, 8, 8]

disp("Przykład 5");
disp("a = 0");
disp("b = 2");
disp("A = [0, 0, 0, 0, 8, 8]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(0, 2, 1, [0, 0, 0, 0, 8, 8]))


for N = 1:100
    Values(N) = simpsonIntegral(0, 2, N, [0, 0, 0, 0, 8, 8]);
end

% odkomentować, aby wyświetlić wykres
% plot(1:100, Values);

disp("----------")

% Przykład 6
% a = -5
% b = 10
% A = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1]

disp("Przykład 6");
disp("a = -5");
disp("b = 10");
disp("A = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1]");
disp("N = 1");
disp("wynik: " + simpsonIntegral(-5, 10, 1, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1]));

for N = 1:100
    Values(N) = simpsonIntegral(-5, 10, N, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1]);
end

% odkomentować, aby wyświetlić wykres
%plot(1:100, Values);
