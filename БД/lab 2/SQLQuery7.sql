SELECT * FROM Record_Card
    WHERE [Код вида] = (SELECT MAX([Код вида]) FROM Record_Card);