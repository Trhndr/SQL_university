CREATE VIEW info_order
AS SELECT  ��������,[����������� �����], [������� ����� �����������, %]
FROM Record_Card, Asset_Categories
WHERE Record_Card.[��� ����] = Asset_Categories.[��� ����];
