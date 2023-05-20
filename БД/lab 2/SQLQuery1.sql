SELECT * FROM Record_Card
INNER JOIN Responsible_Persons
    ON Record_Card.[Код ответсвенного лица] = Responsible_Persons.[Код ответственного лица]
order by Record_Card.[Код вида]