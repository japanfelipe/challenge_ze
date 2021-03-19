-- Retornar a posição de estoque mais recente da quantidade de produtos por categoria
-- Fiquei em dúvida se a qtde de produtos refere-se ao volume total em estoque (destes produtos) ou a quantide de
-- produtos que estão em estoque (qtde de SKUs). Considerei a primeira opção :) 

with t as (
  SELECT  
    ROW_NUMBER() OVER(PARTITION BY p.ProductCategory ORDER BY di.DateID DESC) rown,
    di.DateID,
    p.ProductCategory categoria,
    SUM(di.StockQuantily) as qtde
  FROM Daily_Inventory di
    LEFT JOIN Product p
  ON di.ProductID = p.ProductID
  GROUP BY di.DateID, p.ProductCategory
  )
 SELECT dateid, categoria, qtde
 FROM t
 WHERE rown = 1