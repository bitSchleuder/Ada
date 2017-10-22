-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Ausgabezeilen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

with Karten, Zeilen, Drucker;
-- FROM Karten IMPORT Karte;
-- FROM Zeilen IMPORT Zeilenbild;
use  Karten, Zeilen;

package Ausgabe is

procedure DruckeZeile(ort: in ZeilenBild);

procedure DruckeString(s: String);

procedure DruckeKarte(s: String; k: Karte);

end Ausgabe;

