--- estrazione delle prenotazioni per un singolo passeggero:
SELECT 
    Pr.PrenotazioneId,
    O.DataPartenza,
    O.OraPartenza,
    T.CodiceTreno,
    SP.Descrizione AS StatoPrenotazione
FROM Prenotazioni Pr
JOIN StatoPrenotazioni SP ON Pr.StatoId = SP.StatoPrenotazioneId

JOIN Orari O ON Pr.OrarioId = O.OrariId
JOIN Treni T ON O.TrenoId = T.TrenoId