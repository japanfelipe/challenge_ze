-- Retornar a quantidade de produtos distintos que já foram armazenados em cada estado.
-- Nesse caso, entendo que produtos distintos seja SKU

SELECT 
  w.State,
  COUNT(DISTINCT ProductID) qtde_produtos_disc
FROM Daily_Inventory di
LEFT JOIN WarehouseLocation w
  ON di.WarehouseID = w.WarehouseID
GROUP BY w.State

