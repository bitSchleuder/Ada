-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Lochkarten-Inhalte
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 29.12.2000

with Karten;
use  Karten;

package Eingabe is

procedure LiesDaten(Ort: out Karte; Erfolg: out Ergebnis);

procedure TestKarte(Ort: out Karte; Erfolg: out Ergebnis);

procedure LiesKarte(Ort: out Karte; Erfolg: out Ergebnis);

procedure LiesBinaer(Ort: out KartenBild; Erfolg: out Ergebnis);

end Eingabe;
