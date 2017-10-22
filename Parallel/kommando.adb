-- Systemkern fuer serielle Verarbeitung
-- Kommando-Interpreter
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 29.12.2000

with Ada.Strings.Unbounded, Ada.Strings.Fixed, Ustrings;

--FROM Strings IMPORT Concat, CompareStr, Copy, Append, Pos, Space;
use  Ada.Strings.Unbounded, Ada.Strings.Fixed, Ustrings;

with Karten, Eingabe, Zeilen, Ausgabe, Kopiere;

--FROM Karten IMPORT Karte, Ergebnis, KDO, To_String;
--FROM Eingabe IMPORT LiesDaten, LiesKarte;
--FROM Zeilen  IMPORT ZeilenBild;
--FROM Ausgabe IMPORT DruckeZeile;
--FROM Kopiere IMPORT KopiereDaten, KopiereBinaer;
use  Karten, Eingabe, Zeilen, Ausgabe, Kopiere;

package body Kommando is

function IstKommando(Muster: String; Befehl: Karte) return Boolean is
  s: UString;
begin 
  s := To_Ustring(To_String(Befehl));
  return Index(s, KDO & Muster & ' ') = 1;
end IstKommando;

procedure JobKommando(Befehl: in Karte) is
begin DruckeKarte("  *** Neuer Job:", Befehl);
end JobKommando;

procedure EndeKommando(Befehl: in Karte) is
begin DruckeKarte("  ***  Jobende: ", Befehl);
end EndeKommando;

procedure AusfuehreKommando(Befehl: in Karte) is
begin -- dies ist der Kommando-Interpreter 
  DruckeKarte("1 *** Kommando: ", Befehl);
  if    IstKommando("job", Befehl)    then JobKommando(Befehl);
  elsif IstKommando("end", Befehl)    then EndeKommando(Befehl);
  elsif IstKommando("copy", Befehl)   then Kopiere.KopiereDaten;
  elsif IstKommando("binaer", Befehl) then Kopiere.KopiereBinaer;
  else  DruckeKarte("  *** Befehl unbekannt: ", Befehl);
    Kopiere.KopiereDaten;
  end if;
  delay 1.0; -- wait in simulation
end AusfuehreKommando;

end Kommando;


