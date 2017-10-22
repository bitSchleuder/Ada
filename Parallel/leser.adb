-- Systemkern zur Stapelverarbeitung
-- gepufferter Zugriff auf Kartenleser
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 08.01.2001

with Karten, Hardware;

-- FROM Karten IMPORT KartenBild;
-- FROM Hardware IMPORT Status, StartCR, CRStatus;
use  Karten, Hardware;

package body Leser is

imin : constant :=  1;              -- minimaler Pufferindex 
imax : constant := 10;              -- maximaler Pufferindex 
nmax : constant := imax - imin + 1; -- maximale Elementzahl 

subtype Index is Natural range imin .. imax;
type Buffer is array (Index) of aliased KartenBild;
--  anzahl = [0 .. nmax];

Ring: Buffer;
head, tail: Index := imax;
belegt: Natural := 0; 
frei: Natural := nmax;

procedure advance(i: in out Index) is
-- weiterzaehlen im Ring 
-- PRE  imin <= i  <= imax 
-- POST imin <= i' <= imax 
begin 
  if i = imax then i := imin; else i := i + 1;
  end if;
end advance;

procedure gibElement(y: out PKartenBild) is
-- PRE belegt > 0 
begin 
  y := Ring(head)'Access; advance(head);
  belegt := belegt - 1; frei := frei + 1;
end gibElement;

procedure belegePlatz(n: out Index) is
-- PRE frei > 0 
begin 
  advance(tail); n := tail; frei := frei - 1;
end belegePlatz;

procedure StartLeser is
-- PRE frei > 0 
Platz: Index;
begin belegePlatz(Platz);
      StartCR(Ring(Platz)'Access);
end StartLeser;

procedure Fehlerbehandlung is
begin null;
end Fehlerbehandlung;

procedure Dispatcher is
begin null;
end Dispatcher;

procedure KarteDa is
-- dies ist der Kern der Interruptroutine 
begin 
  if CRStatus = ready then  -- Transport erfolgreich 
    belegt := belegt + 1;
    if frei > 0 then StartLeser;
    end if;
  else Fehlerbehandlung;
  end if;
  Dispatcher;
end KarteDa;

procedure LadeKarte(ort: out PKartenBild) is
-- erste Fassung, zu verbessern! 
begin 
  if belegt = 0 then -- Puffer leer 
    if CRStatus = ready then StartLeser; -- Leser steht 
    end if;
    loop Dispatcher;
      exit when belegt > 0;
    end loop;
  end if;
  gibElement(ort);
end LadeKarte;

--procedure LadeKarte(ort: out KartenBild) is
--begin -- einfache Version, ohne Fehlerbehandlung 
--  StartCR(ort);
--  loop exit when CRStatus /= busy;
--  end loop;
--end LadeKarte;

begin --Initialisierung 
  StartLeser;
end Leser;


