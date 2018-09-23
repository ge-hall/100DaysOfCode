declare 
        @min_pattern varchar(max) = '(\d+(?:\.\d*)?|\.\d+) ?(?=(?:MIN|Min|min))',
        @hr_pattern varchar(max) = '(\d+(?:\.\d*)?|\.\d+) ?(?=(?:hr|HR|Hour|HOUR))'
        
select  
    Id,
    -- multiply hour values by 60 and add minute values
    -- generally we are only grabbing one type of value for each row but addition
    -- allow us to provide results in one field.
    coalesce(convert(float,GEHALL.RegexMatch(Comments, @hr_pattern)), 0)*60 + coalesce(convert(float, GEHALL.RegexMatch(Comments, @min_pattern)), 0) CommentedProcTime,
    comments
  FROM [HCL_DataStaging].[ElectiveSurgeryDemand].[TNS_WaitingListDaily]