-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Kartenleser
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 08.01.2001

with Karten;
use  Karten;

package Leser is

procedure LadeKarte(ort: out PKartenBild);

end Leser;
