with randowvalues
    as(
  
       select 1 id,CAST(RAND(CHECKSUM(NEWID()))*10.8 as int) +15 as [годовая норма амортизации, %],
	    RAND(CHECKSUM(NEWID()))*1000 as [Балансовая стоимость], CAST(RAND(CHECKSUM(NEWID()))*100000 as int) as [Инвентарный номер]
	    
		union  all
        select id + 1,CAST(RAND(CHECKSUM(NEWID()))*10.8 as int)  +20 as  [годовая норма амортизации, %],
		 RAND(CHECKSUM(NEWID()))*100 as [Балансовая стоимость], CAST(RAND(CHECKSUM(NEWID()))*100000 as int) as [Инвентарный номер]
        from randowvalues
        where 
          id < 20
      )
 
  
    select *
    from randowvalues
    OPTION(MAXRECURSION 0)