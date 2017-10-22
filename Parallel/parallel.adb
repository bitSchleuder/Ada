-- Systemkern fuer parallele Verarbeitung
-- zentrale Steuerung
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 29.12.2000

with Hardware, Karten, Eingabe, Kommando;
-- FROM Karten  IMPORT Karte, Ergebnis;
-- FROM Eingabe IMPORT LiesKarte;
use Karten, Eingabe;

procedure Parallel is

procedure Interpretiere(Resultat: out Ergebnis) is
  SteuerKarte: Karte;
  KartenArt: Ergebnis;
begin -- Daten ueberlesen 
  loop LiesKarte(SteuerKarte, KartenArt);
    exit when (KartenArt = spezial) or (KartenArt = ende);
  end loop;
  if KartenArt = spezial
    then Kommando.AusfuehreKommando(SteuerKarte);
  end if;
  Resultat := KartenArt;
end Interpretiere;

JobStatus: Ergebnis;

begin -- Systemkern 
    Hardware.SystemStart;
    loop Interpretiere(JobStatus);
      exit when JobStatus = ende;
    end loop;
    Hardware.ShutDown;
exception when others => Hardware.Shutdown;
end Parallel;

