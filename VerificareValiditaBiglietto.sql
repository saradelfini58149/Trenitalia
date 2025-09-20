--- Occorre per verificare la validità di un biglietto:
SELECT 
    B.BigliettoId,
    P.Nome + ' ' + P.Cognome AS Passeggero,
    O.DataPartenza,
    O.OraPartenza,
    T.CodiceTreno,
    CASE 
        WHEN GETDATE() < CAST(O.DataPartenza AS DATETIME) + CAST(O.OraPartenza AS DATETIME)
        THEN 'Valido'
        ELSE 'Scaduto'
    END AS StatoBiglietto
FROM Biglietti B
JOIN Passeggeri P ON B.PasseggeroId = P.PasseggeroId
JOIN Orari O ON B.OrarioId = O.OrariId
JOIN Treni T ON O.TrenoId = T.TrenoId
WHERE B.BigliettoId = 12;