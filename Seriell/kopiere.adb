-- Systemkern zur Stapelverarbeitung
-- Kopiere-Kommandos
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

with Ada.Strings.Unbounded, UStrings;
--FROM Strings IMPORT Concat, CompareStr, Copy, Append, Pos;
use  Ada.Strings.Unbounded, UStrings;

with Karten, BIOS;
--FROM Karten  IMPORT Karte, KartenBild, Ergebnis;
--FROM BIOS    IMPORT LiesDaten, LiesKarte, LiesBinaer, DruckeZeile;
use Karten, BIOS;

package body Kopiere is

procedure KopiereDaten is
  s: Karte; e: Ergebnis;
begin 
  DruckeString("  *** Daten kopieren: ");
  LiesDaten(s, e);
  while (e = daten) or (e = binaer) 
  loop DruckeKarte(" ", s); LiesDaten(s, e);
  end loop;
  if e = ende then LiesKarte(s, e); 
  end if;
end KopiereDaten;

function HexChar(n: Natural) return Character is
begin 
  if n < 10 then return Character'Val(n + 48);
  else return Character'Val(n + 55);
  end if;
end HexChar;

procedure AppendHex(s: in out UString; n: Natural) is
begin 
  if n < 256 then Append(s, " "); else Append(s, "*");
  end if;
  Append(s, HexChar((n / 16) mod 16));
  Append(s, HexChar(n mod 16));
end AppendHex;

procedure HexZeile(m: String; i: Natural; Bild: KartenBild) is
  l: Natural; s: UString;
begin 
  s := Null_Unbounded_String; AppendHex(s, i); Append(s, ":");
  for k in i+1 .. i+16 
  loop l := Bild(k); AppendHex(s, l);
  end loop;
  Append(s, "    ");
  for k in i+1 .. i+16 loop l := Bild(k);
    if (l < 33) then Append(s, " ");
    elsif l < 128 then Append(s, Character'Val(l)); 
    else Append(s, SUB);
    end if;
  end loop;
  DruckeString(m & To_String(s));
end HexZeile;

procedure DruckeHex(s: string; Bild: KartenBild) is
begin 
  for i in 0 .. 4 loop HexZeile(s, i*16, Bild);
  end loop;
  DruckeString(" ");
end DruckeHex; 

procedure KopiereBinaer is
  s: KartenBild; e: Ergebnis;
begin 
  DruckeString("  *** Daten binaer kopieren: ");
  LiesBinaer(s, e);
  while (e = daten) or (e = binaer) 
  loop DruckeHex(" ", s); LiesBinaer(s, e);
  end loop;
end KopiereBinaer;

end Kopiere;
