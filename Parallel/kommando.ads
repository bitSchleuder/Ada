-- Systemkern fuer serielle Verarbeitung
-- Kommando-Interpreter
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 29.12.2000

with Karten;
use  Karten;

package Kommando is

procedure AusfuehreKommando(Befehl: in Karte);
-- dies ist der Kommando-Interpreter!

end Kommando;


