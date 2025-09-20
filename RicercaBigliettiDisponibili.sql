---Ricerca dei biglietti disponibili per una tratta e data specifica

SELECT 
    B.BigliettoId,
    P.Nome + ' ' + P.Cognome AS Passeggero,
    T.CodiceTreno,
    O.DataPartenza,
    O.OraPartenza,
    O.OraArrivo,
    B.Classe,
    B.Posto
FROM Biglietti B
JOIN Passeggeri P ON B.PasseggeroId = P.PasseggeroId
JOIN Orari O ON B.OrarioId = O.OrariId
JOIN Treni T ON B.TrenoId = T.TrenoId
WHERE O.DataPartenza = '25-09-2025'
  AND T.CodiceTreno = 'Frecciarossa 1000';
