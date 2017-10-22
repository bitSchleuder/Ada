-- Systemkern zur Stapelverarbeitung
-- Zugriff auf Lochkarten-Inhalte
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 08.01.2001

with Ada.Text_IO, Ada.Integer_Text_IO;
-- FROM InOut IMPORT WriteString, WriteLine, WriteCard;
use  Ada.Text_IO, Ada.Integer_Text_IO;

with Hardware, Leser, Karten;
-- FROM Hardware IMPORT Status, CRStatus;
-- FROM Leser IMPORT LadeKarte;
-- FROM Karten IMPORT Karte, KartenBild, Ergebnis, EndeKarte, Steuer;
use  Hardware, Leser, Karten;

package body Eingabe is

Puffer:     PKartenBild := null;
bearbeitet: boolean := True;

procedure TestEnde(wo: KartenBild; Erfolg: in out Ergebnis) is
begin
  if wo = EndeKarte then Erfolg := ende;
  end if;
end TestEnde;

procedure Umcodiere(von: KartenBild; nach: out Karte; 
		    Erfolg: out Ergebnis) is
  k: Natural;
begin if CRStatus /= ready then Erfolg := ende;
  else Erfolg := daten;
    for i in KartenBild'Range
    loop k := von(i);
      if (i = 1) and (k = Steuer) 
      then nach(i) := KDO; Erfolg := spezial;
      elsif (k = 30) OR (k = 26) then nach(i) := Character'Val(0);
      elsif k < 128 then nach(i) := Character'Val(k);
      else nach(i) := SUB; Erfolg := binaer;
      end if;
    end loop;
    TestEnde(von, Erfolg);
  end if;
exception when others => Put_Line("%%% Umcodiere"); 
end Umcodiere;

procedure LiesDaten(Ort: out Karte; Erfolg: out Ergebnis) is
begin LadeKarte(Puffer);
  Umcodiere(Puffer.all, Ort, Erfolg);
  bearbeitet := FALSE;
end LiesDaten;

procedure TestKarte(Ort: out Karte; Erfolg: out Ergebnis) is
begin if bearbeitet then LadeKarte(Puffer); 
  end if;
  Umcodiere(Puffer.all, Ort, Erfolg);
  bearbeitet := FALSE;
end TestKarte;

procedure LiesKarte(Ort: out Karte; Erfolg: out Ergebnis) is
begin if bearbeitet then LadeKarte(Puffer); 
  end if;
  Umcodiere(Puffer.all, Ort, Erfolg);
  bearbeitet := TRUE;
end LiesKarte;

procedure LiesBinaer(Ort: out KartenBild; Erfolg: out Ergebnis) is
begin if bearbeitet then LadeKarte(Puffer); 
  end if;
  Ort := Puffer.all; Erfolg := binaer;
  TestEnde(Puffer.all, Erfolg);
  bearbeitet := TRUE;
end LiesBinaer;

end Eingabe;


