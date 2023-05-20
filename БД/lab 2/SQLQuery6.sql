SELECT DISTINCT Record_Card.Название AS name FROM Record_Card
UNION
SELECT DISTINCT Asset_Categories.Наименование AS name FROM Asset_Categories;