SELECT * FROM Record_Card
    WHERE [��� ����] = (SELECT MAX([��� ����]) FROM Record_Card);