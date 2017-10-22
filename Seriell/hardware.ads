-- Systemkern fuer serielle Verarbeitung
-- hardware-nahe Groessen und Routinen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Karten, Zeilen;
-- FROM Karten IMPORT PKartenBild;
-- FROM Zeilen IMPORT ZeilenBild;
use  Karten, Zeilen;

package Hardware is

type Status is (off, ready, busy, empty, error);

task CR is
  entry Start(wohin: PKartenBild);
  entry Stop;
end CR;

CRStatus: Status := off;

procedure StartCR(Ort: PKartenBild) renames CR.Start;

task LP is
  entry Start(woher: ZeilenBild);
  entry Stop;
end LP;

LPStatus: Status := off;

procedure StartLP(Ort: in ZeilenBild) renames LP.Start;

procedure SystemStart;

procedure ShutDown;

end Hardware;
