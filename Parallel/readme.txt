Das hier vorgestellte kleine parallele Batch-System ist in Ada 95 geschrieben
und mit dem GNU-Ada-Translator GNAT uebersetzbar.

Die hier vorliegende ausfuehrbare Fassung "parallel.exe" laeuft unter OS/2,
womoeglich auch unter DOS (nicht getestet).

Bei einer Uebertragung ist das Hauptmodul "parallel.adb" und alle davon
abhaengigen Module neu zu uebersetzen und zu binden.

Das erzeugte Objekt liest simulierte Lochkartenbilder aus einer Textdatei 
"parallel.dat" und produziert eine simulierte Druckerdatei "parallel.out". 
Auf der Konsole kommt nur eine Startmeldung und eine Endemeldung, wenn 
alles in Ordnung ist. Haengt das System, so kann es (unter OS/2) mit
Ctl-C abgebrochen werden.

Stand 12.01.2001

Klaus Lagally

*** Achtung, das System laeuft noch nicht !!


