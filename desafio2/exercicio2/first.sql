-- Retornar a evolução da quantidade em estoque por categoria de produto por data.

SELECT 
  di.DateID,
  p.ProductCategory categoria,
  SUM(StockQuantily) quantidade
FROM Daily_Inventory di
LEFT JOIN Product p
  ON di.ProductID = p.ProductID
GROUP BY di.DateID, p.ProductCategory
ORDER BY di.DateID, p.ProductCategory ASC