SELECT * FROM Record_Card
INNER JOIN Responsible_Persons
    ON Record_Card.[��� ������������� ����] = Responsible_Persons.[��� �������������� ����]
order by Record_Card.[��� ����]