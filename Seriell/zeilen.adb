-- Systemkern zur Stapelverarbeitung
-- Datentyp Ausgabezeilen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

package body Zeilen is

function To_String(ort: Zeilenbild) return string is
  s: string (1 .. 133);
begin 
  for i in ZeilenBild'Range loop s(i+1) := ort(i);
  end loop;
  return s;
end To_String;

end Zeilen;

