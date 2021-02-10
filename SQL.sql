--Select
--ANSI
Select ContactName Adi ,CompanyName SirketAdi,City Sehir From Customers --Alias Kullanıldı

Select * From Customers WHERE City = 'Berlin' --Koşula Göre Getirildi

--Case insensitive
Select * From Products WHERE CategoryID=1 or CategoryID=3 --Birden fazla koşul oluşturulabilir

Select * From Products WHERE CategoryID=1 and UnitPrice>=10

Select * From Products Where CategoryID=1 Order By UnitPrice  DESC  --ascending: artan sıralama --Descending: azalan sıralama

Select Count(*) Adet From Products where CategoryID=2

Select CategoryID,count(*) From Products Group By CategoryID --Birden fazla group by eklenebilir

Select CategoryID,count(*) From Products Where UnitPrice>20 -- kümülatiflere Having uygulanır
Group By CategoryID Having count(*)<10

Select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName 
From Products Inner Join Categories -- İki tabloyu birleştirdi
ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice>10
ORDER By Products.UnitPrice ASC

--DTO Data Transformation Object
--Inner Join Sadece Eşleşen Verileri Getirir

Select * From Products p Inner Join [Order Details] od
ON p.ProductID = od.ProductID
Inner Join Orders o
On o.OrderID = od.OrderID

Select * From Customers c Left Join Orders o 
On c.CustomerID = o.CustomerID
Where o.CustomerID is null