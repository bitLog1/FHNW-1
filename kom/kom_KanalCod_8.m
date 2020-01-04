%******************************************************************************
% \details     : 
% \autor       : Simon Burkhardt
% \file        : kom_KanalCod_8.m
% \date        : 03.01.2020
% \version     : 1.0
%******************************************************************************
clear all; close all; clc;
format short;
n = 7;
k = 3;

%   [1   X2  X3 X4]
g = [1 0 1 1 1];      % Generatorpolynom g(X) = 1 + X^2 + X^3 + X^4

%%
% a) Pr�fen Sie nach, ob die Bin�rw�rter g�ltige Codew�rter sind. 

r1 = flip([1 1 0 1 0 0 1]);
r2 = flip([0 1 1 1 0 1 1]);

% Jedes g�ltige Codewortpolynom ist ohne Rest durch g(X) teilbar
[q,s1] = gfdeconv(r1, g);
if(s1)       % wenn ein Rest �brig bleibt
    disp("Codewort ung�ltig");
    s1
end
[q,s2] = gfdeconv(r2, g);
if(s2)       % wenn ein Rest �brig bleibt
    disp("Codewort ung�ltig");
    s2
end

%%
% b) Bei der �bertragung des Codewortes v = (0 0 1 1 1 0 1) tritt 
% der Fehler e = (0 1 0 0 0 0 0) auf. 
% Wie lautet die polynomiale Darstellung r(X) des empfangenen Bin�rwortes? 
v = flip([0 0 1 1 1 0 1]);
e = flip([0 1 0 0 0 0 0]);
% --> v = e+r
% r = gfsub(e,v);
% --> r = v+e
r = gfadd(e,v)
gfpretty(r)

%%
% c) Welches Resultat (Quotient und Rest)
% erhalten Sie, wenn Sie r(X) durch g(X) dividieren?

[q,r] = gfdeconv(r,g)
gfpretty(q)
gfpretty(r)  % r = s(x)  = Syndromplynom

%%
% d) Ist das Restpolynom vom gesendeten Codewort abh�ngig? 
% nein






