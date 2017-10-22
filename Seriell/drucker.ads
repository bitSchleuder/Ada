-- Systemkern fuer serielle Verarbeitung
-- Zugriff auf On-Line-Zeilendrucker
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

with Zeilen;
-- FROM Zeilen IMPORT ZeilenBild;
use  Zeilen;

package Drucker is

procedure DruckeZeile(ort: ZeilenBild);

end Drucker;

