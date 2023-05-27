with randowvalues
    as(
  
       select 1 id,CAST(RAND(CHECKSUM(NEWID()))*10.8 as int) +15 as [������� ����� �����������, %],
	    RAND(CHECKSUM(NEWID()))*1000 as [���������� ���������], CAST(RAND(CHECKSUM(NEWID()))*100000 as int) as [����������� �����]
	    
		union  all
        select id + 1,CAST(RAND(CHECKSUM(NEWID()))*10.8 as int)  +20 as  [������� ����� �����������, %],
		 RAND(CHECKSUM(NEWID()))*100 as [���������� ���������], CAST(RAND(CHECKSUM(NEWID()))*100000 as int) as [����������� �����]
        from randowvalues
        where 
          id < 20
      )
 
  
    select *
    from randowvalues
    OPTION(MAXRECURSION 0)