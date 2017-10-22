-- Systemkern fuer serielle Verarbeitung
-- hardware-nahe Groessen und Routinen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

with Karten, Zeilen;

-- FROM Karten IMPORT KartenBild;
-- FROM Zeilen IMPORT ZeilenBild;
use  Karten, Zeilen;

package Hardware is

type Status is (off, ready, busy, empty, error);
CRStatus: Status;
LPStatus: Status;

procedure StartCR(Ort: PKartenBild);

procedure StartLP(Ort: in ZeilenBild);

procedure SystemStart;

procedure ShutDown;

end Hardware;
