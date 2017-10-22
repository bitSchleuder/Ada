-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Ausgabezeilen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Hardware, Karten, Zeilen, Drucker;
-- FROM Hardware IMPORT Status, StartLP, LPStatus;
-- FROM Karten IMPORT Karte;
-- FROM Zeilen IMPORT Zeilenbild;
use  Hardware, Karten, Zeilen;

package body Ausgabe is

procedure DruckeZeile(ort: in ZeilenBild) is
begin Drucker.DruckeZeile(ort);
end DruckeZeile;

procedure DruckeString(s: String) is
  z: ZeilenBild := (others => ' ');
begin 
  for i in s'Range loop z(i - s'First) := s(i);
  end loop;
  DruckeZeile(z);
end DruckeString;

procedure DruckeKarte(s: String; k: Karte) is
  z: ZeilenBild := (others => ' ');
begin
  for i in s'Range loop z(i - s'First) := s(i);
  end loop;
  for i in Karte'Range loop z(s'Length + i) := k(i);
  end loop;
  DruckeZeile(z);
end DruckeKarte;

end Ausgabe;


