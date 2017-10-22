-- Systemkern fuer serielle Verarbeitung
-- Hardware-nahe Groessen und Routinen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 07.01.2001

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded, Ustrings;
-- FROM InOut IMPORT OpenInput, RedirectOutput, CloseOutput, OpenOutput;
-- FROM InOut IMPORT ReadLine, termCH, WriteLine, WriteCard, WriteLn;
-- FROM Strings IMPORT Append;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded, Ustrings;

with Ada.Calendar;
use  Ada.Calendar;

with Karten, Zeilen;
-- FROM Karten IMPORT KartenBild;
-- FROM Zeilen IMPORT ZeilenBild, To_String;
use  Karten, Zeilen;

package body Hardware is

procedure StartCR(Ort: PKartenBild) is
  s: Ustring; l: Positive := KartenBild'Last;
begin 
  for i in KartenBild'Range loop Ort(i) := 0;
  end loop;
  Get_Line(s); Append(s, ' '); l := length(s);
  if l > KartenBild'Last then l := KartenBild'Last; 
  end if;
  for i in 1 .. l loop Ort(i) := Character'Pos(Element(s,i));
  end loop;
  if End_Of_File then CRStatus := empty; else CRStatus := ready;
  end if;
exception when others => Put_Line("%%% StartCR"); 
end StartCR;

procedure StartLP(Ort: ZeilenBild) is
begin 
  Put(To_String(Ort)); New_Line;
  LPStatus := ready;
end StartLP;

Reader, Printer: File_Type;
dd: Day_Number;
mm: Month_Number;
yy: Year_Number;
ww: Day_Duration;
sss, hrs, mins, secs: integer;

procedure Put2(n: Integer) is
begin if n < 10 then Put("0"); end if; Put(n, 1);
end Put2;

procedure PutDate is
begin
  Split(Clock, yy, mm, dd, ww); sss := Integer(ww); 
  hrs := sss/3600; sss := sss mod 3600; mins := sss/60; secs := sss mod 60;
  Put2(dd); Put("."); Put2(mm); Put("."); Put(yy, 4); Put(", ");
  Put2(hrs); Put(":"); Put2(mins); Put(":"); Put2(secs); New_Line;
end PutDate;

procedure SystemStart is
begin 
  Put_Line("**************** SystemStart ******************");
  Open(Reader, In_File, "seriell.dat");
  Set_Input(Reader);
  Open(Printer, Append_File, "seriell.out");
  Set_Output(Printer);
  Put_Line("************* Start Simulation ****************");
  PutDate;
  Put_Line("**************** SystemStart ******************");
end SystemStart;

procedure ShutDown is
begin 
  Put_Line("***************** ShutDown ********************");
  PutDate;
  Put_Line("************** End Simulation *****************");
  New_Line; Flush(Printer); Close(Printer);
  Set_Output(Standard_Output);
  Put_Line("***************** ShutDown ********************");
  PutDate;
  Put_Line("************** End Simulation *****************");
  Put(Character'Val(7));
end ShutDown;

begin -- Start Simulation
  Put_Line("************* Start Simulation ****************");
  PutDate;
end Hardware;

