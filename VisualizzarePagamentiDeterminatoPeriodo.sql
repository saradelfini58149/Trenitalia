---Permette di visualizzare i pagamenti effettuati per un determinato periodo:
SELECT 
    Pg.PagamentoId,
    P.Nome + ' ' + P.Cognome AS Passeggero,
    B.Prezzo,
    Pg.DataPagamento,
    SP.Descrizione AS StatoPagamento,
    MP.Descrizione AS MetodoPagamento
FROM Pagamenti Pg
JOIN Biglietti B ON Pg.BigliettoId = B.BigliettoId
JOIN Passeggeri P ON B.PasseggeroId = P.PasseggeroId
JOIN MetodoPagamento MP ON Pg.MetodoPagamentoId = MP.MetodoPagamentoId
JOIN StatiPagamento SP ON Pg.StatoPagamentoId = SP.StatoPagamentoId
WHERE Pg.DataPagamento BETWEEN '01-01-2025' AND '31-12-2025'
ORDER BY Pg.DataPagamento DESC;