-- Systemkern fuer serielle Verarbeitung
-- zentrale Steuerung
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Hardware, Karten, BIOS, Kommando;
-- FROM Karten IMPORT Karte, Ergebnis;
-- FROM BIOS   IMPORT LiesKarte;
use Karten, BIOS;

procedure Seriell is

procedure Interpretiere(Resultat: out Ergebnis) is
  SteuerKarte: Karte;
  Art: Ergebnis;
begin -- Daten ueberlesen 
  loop LiesKarte(SteuerKarte, Art);
    exit when (Art = spezial) or (Art = ende);
  end loop;
  if Art = spezial
    then Kommando.AusfuehreKommando(SteuerKarte);
  end if;
  Resultat := Art;
end Interpretiere;

JobStatus: Ergebnis;

begin -- Systemkern 
    Hardware.SystemStart;
    loop Interpretiere(JobStatus);
      exit when JobStatus = ende;
    end loop;
    Hardware.ShutDown;
end Seriell;

