-- Systemkern zur Stapelverarbeitung
-- Datentyp Ausgabezeilen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

package Zeilen is

type ZeilenBild is array (0 .. 132) of Character;
type PZeilenBild is access all ZeilenBild;

function To_String(ort: Zeilenbild) return string;

end Zeilen;

