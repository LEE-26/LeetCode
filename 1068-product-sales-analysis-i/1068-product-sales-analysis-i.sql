SELECT P.product_name, S.year, S.price 
FROM Sales S
INNER JOIN Product P USING (product_id) ;

