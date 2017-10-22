procedure LadeKarte(Ort: out KartenBild) is
-- zweite Fassung mit Sperre 
begin 
  Sperre;
    if belegt = 0 then -- Puffer leer 
      if CRStatus = ready then StartLeser; -- Leser steht 
      end if;
      loop Freigabe; Dispatcher; Sperre;
        exit when belegt > 0;
      end loop;
    end if; 
  gibElement(Ort);
  Freigabe;
end LadeKarte;


