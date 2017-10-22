-- Systemkern zur Stapelverarbeitung
-- Programm-Schnittstelle Basissystem
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Karten, Eingabe, Zeilen, Ausgabe;
use  Karten, Zeilen;

package BIOS is

Steuer:     constant := Karten.Steuer;
EndeKarte:  constant KartenBild := Karten.EndeKarte;

procedure LiesDaten(Ort: out Karte; Erfolg: out Ergebnis)
	renames Eingabe.LiesDaten;

procedure TestKarte(Ort: out Karte; Erfolg: out Ergebnis)
	renames Eingabe.TestKarte;

procedure LiesKarte(Ort: out Karte; Erfolg: out Ergebnis)
	renames Eingabe.LiesKarte;

procedure LiesBinaer(Ort: out KartenBild; Erfolg: out Ergebnis)
	renames Eingabe.LiesBinaer;

procedure DruckeZeile(ort: in ZeilenBild)
	renames Ausgabe.DruckeZeile;

procedure DruckeString(s: String)
	renames Ausgabe.DruckeString;

procedure DruckeKarte(s: String; k: Karte)
	renames Ausgabe.DruckeKarte;

end BIOS;
