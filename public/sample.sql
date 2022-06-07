select
    code,
    nfamily
     ,form677.date1 as date1
     ,codem
     , replace (convert(varchar, cast (FinalPrice as money),1),'.00','') +N'  ریال ' as FinalPrice_m
     ,N' بخش '+ (SELECT Name
                 FROM ETools_Group
                 where id=groups)
    +' /  '+
      (select
           EToolsTitle  from form676
       where
               code=items) as title

     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionState)[1]', 'nvarchar(500)') AS TransactionState
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)') AS TransactionNumber
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionStateCode)[1]', 'nvarchar(500)') AS TransactionStateCode

FROM Payment_Log

         inner join Payment_Order on Payment_Order_Id=Payment_Order.id
         inner join form677 on form677.code=SUBSTRING(subSystem_order,5,100)
where SUBSTRING(subSystem_order,0,4) in (677 , 719 )

  and form677.code=@#autoid



    code,title,nfamily,date1,TransactionState,TransactionNumber,TransactionStateCode,FinalPrice_m



///////////////////////////////





select  top 20
form677.code , form677.codem , form677.nfamily , form677.date1 , form677.groups , form677.items
  , replace (convert(varchar, cast (form677.price as money),1),'.00','') +N'  ریال ' as FinalPrice_m
 , N' بخش '+ (SELECT Name
                                         FROM ETools_Group
                                         where id=groups)
    +' /  '+
                              (select
                                   EToolsTitle  from form676
                               where
                                       code=items) as title


from
    form677
        inner join ETools_Group ON form677.groups = ETools_Group.id
        inner join form676 ON form677.items = form676.code
where
        form677.code=677




