-- لیست پرداختهای کاربر



SELECT  Payment_Log.ID
     ,Payment_Log.Payment_Order_Id
     ,Payment_Account_Id
     ,FinalPrice
     ,Payment_Log.Attribute
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionState)[1]', 'nvarchar(500)') AS TransactionState
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)') AS TransactionNumber
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionStateCode)[1]', 'nvarchar(500)') AS TransactionStateCode
     ,Payment_Order. id
     ,Payment_Order.subSystem_order
     ,(select value from dbo.SplitString(subSystem_order,'_')
       where idx=2)as formcode,
    isnull(form677.txt_name,'')  as name,   form677.nfamily
     , form677.date1
     ,  form677.codem
     , form677.code
     ,case len(CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)')) when 1 then N'' else N'مشاهده' end as link_title
     , (case isnull( form677.rbl_status,-1) when -1 then N'استفاده نشده'  when 0 then N'استفاده نشده' when 1 then N'استفاده شده' else '' end) as rbl_status
     ,(SELECT isnull(Name,'')
       FROM ETools_Group
       where id=(case  form677.groups when 'undefined' then -1 else   form677.groups end)) +' / '+

      (select isnull(EToolsTitle,'')  from form676
       where code=(case  form677.items when 'undefined' then -1 else   form677.items end)) as items



FROM Payment_Log
         inner join Payment_Order on Payment_Order_Id=Payment_Order.id
         inner join form677 on form677.code=(select value from dbo.SplitString(subSystem_order,'_')
                                             where idx=2)
where (select value from dbo.SplitString(Payment_Order.subSystem_order,'_')
       where idx=1) in (677 , 719 )
  and ( form677.codem =@codehaghighi    or  (@codehaghighi ='' ) )
  and ( form677.txt_gozarname =@codehoghoghi    or  (@codehoghoghi ='') )
  and ( form677.txt_eghtesadicode =@codehoghoghi     or  (@codehoghoghi ='') )
  and (CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)')=@peygiri
    or @peygiri='' )
  and (len(@peygiri)>0 or len(@codehaghighi)>0  or len(@codehoghoghi)>0 )
  and CAST(Payment_Log.Attribute AS XML ).value('(//TransactionState)[1]', 'nvarchar(500)')  like N'عملیات با موفقیت انجام شد'
order by form677.code desc


-- فرم من



SELECT  Payment_Log.ID
     ,Payment_Log.Payment_Order_Id
     ,Payment_Account_Id
     ,FinalPrice
     ,Payment_Log.Attribute
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionState)[1]', 'nvarchar(500)') AS TransactionState
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)') AS TransactionNumber
     ,CAST(Payment_Log.Attribute AS XML ).value('(//TransactionStateCode)[1]', 'nvarchar(500)') AS TransactionStateCode
     ,Payment_Order. id
     ,Payment_Order.subSystem_order
     ,(select value from dbo.SplitString(subSystem_order,'_')
       where idx=2)as formcode,
    isnull(form677.txt_name,'')  as name,   form677.nfamily
     , form677.date1
     ,  form677.codem
     , form677.code
     ,case len(CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)')) when 1 then N'' else N'مشاهده' end as link_title
     , (case isnull( form677.rbl_status,-1) when -1 then N'استفاده نشده'  when 0 then N'استفاده نشده' when 1 then N'استفاده شده' else '' end) as rbl_status
     ,(SELECT isnull(Name,'')
       FROM ETools_Group
       where id=(case  form677.groups when 'undefined' then -1 else   form677.groups end)) +' / '+

      (select isnull(EToolsTitle,'')  from form676
       where code=(case  form677.items when 'undefined' then -1 else   form677.items end)) as items



FROM Payment_Log
         inner join Payment_Order on Payment_Order_Id=Payment_Order.id
         inner join form677 on form677.code=(select value from dbo.SplitString(subSystem_order,'_')
                                             where idx=2)
where (select value from dbo.SplitString(Payment_Order.subSystem_order,'_')
       where idx=1) in (677 , 719 )
  and ( form677.codem =@codehaghighi    or  (@codehaghighi ='' ) )
  and ( form677.txt_gozarname =@codehoghoghi    or  (@codehoghoghi ='') )
  and ( form677.txt_eghtesadicode =@codehoghoghi     or  (@codehoghoghi ='') )
  and (CAST(Payment_Log.Attribute AS XML ).value('(//TransactionNumber)[1]', 'nvarchar(500)')=@peygiri
    or @peygiri='' )
  and (len(@peygiri)>0 or len(@codehaghighi)>0  or len(@codehoghoghi)>0 )
  and CAST(Payment_Log.Attribute AS XML ).value('(//TransactionState)[1]', 'nvarchar(500)')  like N'عملیات با موفقیت انجام شد'
order by form677.code desc

/////////////


select top 30
*
FROM form677
order by  code desc


////////////

select top 10
*
FROM Payment_Log
 order by  Id desc
