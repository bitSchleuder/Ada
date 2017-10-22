-- Systemkern zur Stapelverarbeitung
-- Datentyp Lochkarte
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 29.12.2000

package body Karten is

function To_String(k: Karte) return String is
  s: string (Karte'Range);
begin
  for i in Karte'Range loop s(i) := k(i);
  end loop;
  return s;
end To_String;

end Karten;
