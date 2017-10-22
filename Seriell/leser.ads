-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Kartenleser
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Karten;
-- FROM Karten IMPORT PKartenBild;
use  Karten;

package Leser is

procedure LadeKarte(ort: out PKartenBild);

end Leser;
