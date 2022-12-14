SELECT p.ProductName AS 'Produto',
MIN(d.Quantity) AS 'Mínima',
MAX(d.Quantity) AS 'Máxima',
ROUND(AVG(d.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS d
ON p.ProductID = d.ProductID
GROUP BY p.ProductID
HAVING ROUND(AVG(d.Quantity), 2) > 20
ORDER BY ROUND(AVG(d.Quantity), 2) ASC, p.ProductName ASC;
