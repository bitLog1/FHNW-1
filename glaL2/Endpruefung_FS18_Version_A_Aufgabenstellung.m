%******************************************************************************
% Project     : Schlusspr�fung Matlab
% Autor       : Vorname Nachname
% Filename    : Endpr�fung Version C
% Date        : 3. Mai 2018
%******************************************************************************

%-----------------------------------------------------------------------------
% Vorlage
%-----------------------------------------------------------------------------

clc; clearvars; close all hidden;
%Initalisierungen
f0 = 2;                                     %[Hz] Resonanzfrequenz
d  = 3;                                     %[-] Abklingkoeffizient
Up = 10;                                    %[V] Spannung


t = linspace(0,1.5,1e3);                    %[sec] Zetivektor

%Berechnungen
ut = Up*(1-cos(2*pi*f0*t).*exp(-d*t));      %[V] Zeitverlauf der Spannung
[Umax,IND_Umax]=max(ut);                    %[V] Maximalwert der Spannung   
t_Umax=t(IND_Umax);                         %[V] Zugeh�riger Zeitpunkt

uenv = Up*(1+exp(-d*t));                    %[V] positive Umh�llende


%-----------------------------------------------------------------------------
% Aufgabe 1: Plots/Subplots
%-----------------------------------------------------------------------------

% a)Zeichnen Sie Spannung linear in eine Figur. Schalten Sie das Gitternetz ein.
%	Die Linie soll schwarz sein und
%	Eine Liniendicke von 2 aufweisen

% b)Setzen Sie den Titel �Sprungantwort eines ged�mpften Schwingkreises�
% 	�ndern Sie die Schriftart auf �Arial�
% 	Mit der Schriftgr�sse 14


% c)Beschriften Sie die x-Achse mit Zeit [sec]
% 	Beschriften Sie die y-Achse mit uSprung [V] (tiefgestellten Indizes)


% d)Setzen Sie die Achsen: x: 0�1.2; y: 0�20


% e)Setzen Sie einen roten Kreis beim Punkt (t_Umax, Umax), wobei die
%   gespeicherten Werte zu verwenden sind.


% 	Erstellen eine schwarze, gestrichelte Linie, die den Mittelwert der
%   Spannung f�r t gegen Unendlich (= UP) anzeigt.

%   Erstellen Sie eine zweite schwarze, gestrichelte Linie, die vom Mittelwert
%   der Spannung zum Maximum der Spannung geht.


% 	Beschriften das Maximum der Spannung mit dem Befehl text und indem Sie
%   die Werte die in (t_Umax, Umax) gespeichert sind mit dem Befehl num2str verwenden:
%   Maximalwert: �

% f)Zeichnen Sie die obere Umh�llende Kurve in die Figur. 
% 	Die Linie soll rot gestrichelt sein und eine Liniendicke von 1 aufweisen.


% g)Zeichnen Sie die untere Umh�llende Kurve in die Figur. 
% 	Die Linie soll blau gestrichelt sein und eine Liniendicke von 1 aufweisen.




%-----------------------------------------------------------------------------
% Aufgabe 2: Numerische Wertsuche / Wertbestimmung
%-----------------------------------------------------------------------------

% a)Die Anstiegszeit des Signals soll nun bestimmt werden.
%   Diese ist definiert, wie lange das Signal braucht, um von 10% bis
%   auf 90% des Endwertes anzusteigen.
%   Der Endwert (100%) ist der Signalwert f�r t gegen Unendlich (in diesem Fall UP).

% 	Bestimmen Sie den Zeitpunkt t_U10, bei dem die Spannung ut 10% des
%   Signalendwertes erreicht.


% 	Bestimmen Sie den Zeitpunkt t_U90, bei dem die Spannung ut das erste mal
%   90% des Signalendwertes erreicht.


% 	Berechnen Sie daraus die Anstiegszeit trise


% 	Zeichnen Sie die Schnittpunkte von (t_U10,U10), (t_U90,U90) mittels eines
%   Kreuzes in die Figur. Die Liniendicke soll 2 betragen und die Markersize 8.


% 	Zeichnen Sie gr�ne und gestrichelte Linien ein, die zu diesen zwei Punkten hinf�hren.




% b)Bestimmen Sie vom Vektor ut das lokale Minimum der Kurve.


% 	Zeichnen Sie dieses lokale Minimum in die Grafik und beschriften
%   Sie dieses mit �lokales Minimum�.



%-----------------------------------------------------------------------------
% Aufgabe 3: Tanzende Flammen
%-----------------------------------------------------------------------------

% a)Halbieren Sie den Vektor ut, damit dieser nur noch die erste H�lfte des
%   urspr�nglichen Vektors ausweist.
%   Gr�sse u2t: [1 length(ut)/2]

 
% b)Erzeugen Sie einen Vektor u2tflip , indem Sie den Vektor u2t um 180� drehen
%   (spiegeln an der vertikalen Achse)
%   Gr�sse u2tflip: [1 length(u2t)]



% c) Erzeugen Sie einen Vektor z , indem Sie die zwei Vektoren
%   u2tflip und u2t zusammenf�gen (die Elemente aneinander reihen).
%   Gr�sse z: [1 length(ut)]


% d)Erzeugen eine Matrize z_3D indem Sie den Vektor z mit dem
%   Vektor z multiplizieren.
%   Gr�sse z_3D: [length(ut) length(ut)]


% e)Zeichnen Sie die entstandene Fl�che 1 mit dem Befehl surf(x,y,z),
%   wobei x und y jeweils der Vektor t ist. Z ist die Matrize z_3D.
%   Hinweis: Falls die Figur nicht wie erw�nscht erscheint, m�ssen Sie z_3D transponieren.
%   Halten Sie diese Fl�che 1 mit hold on

% f)Zeichnen Sie eine zweite Fl�che, den Boden auch mit dem Befehl surf(x,y,z).
%   x und y sind Vekotren der L�nge length(t). Z ist eine quadratische Matrize aus lauter Nullen.
%   Gr�sse z: [length(t) length(t)]

    
% g)Setzten Sie von der Fl�che 1 das Property 'EdgeAlpha' auf 0.
% 	Setzen Sie colormap auf hot
% 	Schalten Sie die Achsen aus
