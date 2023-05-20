CREATE VIEW info_order
AS SELECT  Название,[Инвертарный номер], [Годовая норма амортизации, %]
FROM Record_Card, Asset_Categories
WHERE Record_Card.[Код вида] = Asset_Categories.[Код вида];
