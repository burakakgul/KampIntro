--Her bir üründen toplamda ne kadar para kazandığımızı bulunuz.
--İpucu : Group by kullanılacak
--İpucu : Products, Orders, Order Details tabloları join edilecek.
--İpucu : Sum kullanılacak.
--Sonuç aşağıdaki formatta olmalıdır.
--Ürün Adı, Kazanılan Toplam Miktar

SELECT Products.ProductName AS [Ürün Adı], SUM([Order Details].Quantity * [Order Details].UnitPrice) AS [Kazanılan Toplam Miktar]
FROM Products
INNER JOIN [Order Details]
ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders
ON Orders.OrderID = [Order Details].OrderID
GROUP BY ProductName