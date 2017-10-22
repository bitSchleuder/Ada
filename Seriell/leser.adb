-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Kartenleser
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Karten, Hardware;
-- FROM Karten IMPORT PKartenBild;
-- FROM Hardware IMPORT Status, StartCR, CRStatus;
use  Karten, Hardware;

package body Leser is

Bild: aliased KartenBild := (others => 0);

procedure LadeKarte(ort: out PKartenBild) is
begin -- einfache Version, ohne Fehlerbehandlung 
    StartCR(Bild'Access);
    loop exit when CRStatus /= busy;
    end loop;
    ort := Bild'Access;
end LadeKarte;

end Leser;


