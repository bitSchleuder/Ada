-- Systemkern fuer serielle Verarbeitung
-- Hardware-nahe Groessen und Routinen
-- Beispiel zur Vorlesung
-- Grundlagen der Betriebssysteme
-- Sommersemester 2001
-- Klaus Lagally
-- Stand 13.01.2001

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

task body CR is
  Ort: PKartenBild;
  s: Ustring; l: Positive := KartenBild'Last;
begin
  loop
    select 
       accept Start(wohin: PKartenBild) 
       do Ort := wohin;
          CRStatus := busy;
       end Start;
    or accept Stop;
       CRStatus := off;
       exit;
    end select;
    for i in KartenBild'Range loop Ort(i) := 0;
    end loop;
    Get_Line(s); Append(s, ' '); l := length(s);
    if l > KartenBild'Last then l := KartenBild'Last; 
    end if;
    for i in 1 .. l loop Ort(i) := Character'Pos(Element(s,i));
    end loop;
    if End_Of_File then CRStatus := empty; 
    else CRStatus := ready;
    end if;
  end loop;
end CR;

task body LP is
  Ort: ZeilenBild;
begin
  loop
    select 
      accept Start(woher: ZeilenBild) 
      do Ort := woher;
         LPStatus := busy;
      end Start;
        Put(To_String(Ort)); New_Line;
        LPStatus := ready;
    or accept Stop;
        LPStatus := off;
       exit;
    end select;
  end loop;
end LP;

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
  CRStatus := ready;
  Open(Printer, Append_File, "seriell.out");
  Set_Output(Printer);
  LPStatus := ready;
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
  CR.Stop;
  LP.Stop;
  Put(Character'Val(7));
end ShutDown;

begin -- Start Simulation
  Put_Line("************* Start Simulation ****************");
  PutDate;
end Hardware;

