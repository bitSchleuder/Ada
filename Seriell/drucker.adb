-- Systemkern fuer serielle Verarbeitung
-- Zugriff auf On-Line-Zeilendrucker
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

with Hardware, Zeilen;
-- FROM Hardware IMPORT Status, StartLP, LPStatus;
-- FROM Zeilen IMPORT ZeilenBild;
use  Hardware, Zeilen;

package body Drucker is

procedure DruckeZeile(ort: ZeilenBild) is
begin -- einfache Version, ohne Fehlerbehandlung 
  StartLP(ort);
  loop exit when LPStatus /= busy;
  end loop;
end DruckeZeile;

end Drucker;


