-- Systemkern zur Stapelverarbeitung
-- Datentyp Lochkarte
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

package Karten is

type Karte is array (1 .. 80) of Character;

function To_String(k: Karte) return String;

SUB :   constant Character := Character'Val(176);
KDO :   constant Character := '!'; 

subtype Spalte is Natural range 0 .. 2**12 - 1;

type KartenBild is array (1 .. 80) of Spalte;
type PKartenBild is access all KartenBild;

Steuer: constant := Character'Pos(KDO);
EndeKarte:  KartenBild := (others => Steuer);

type Ergebnis is (daten, spezial, binaer, ende);

end Karten;
