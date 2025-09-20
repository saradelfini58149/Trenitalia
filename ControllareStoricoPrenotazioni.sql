---Controllare lo storico delle prenotazioni di un cliente:
SELECT 
    Pr.PrenotazioneId,
    P.Nome + ' ' + P.Cognome AS Passeggero,
    O.DataPartenza,
    O.OraPartenza,
    T.CodiceTreno,
    SP.Descrizione AS StatoPrenotazione,
    Pr.Scadenza
FROM Prenotazioni Pr
JOIN Passeggeri P ON Pr.PasseggeroId = P.PasseggeroId
JOIN Orari O ON Pr.OrarioId = O.OrariId
JOIN Treni T ON O.TrenoId = T.TrenoId
JOIN StatoPrenotazioni SP ON Pr.StatoId = SP.StatoPrenotazioneId
WHERE P.PasseggeroId = 1
ORDER BY O.DataPartenza DESC;