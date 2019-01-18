alter procedure DeleteProduct
@pid varchar(30)
as
begin

if exists ( select * from Products where ID=@pid)
begin
    delete from Products where ID=@pid
end

end
select * from Products