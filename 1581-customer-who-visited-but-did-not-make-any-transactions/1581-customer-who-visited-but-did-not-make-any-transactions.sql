# find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

# 방문했지만 거래는 없는 고객
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits as V
    LEFT JOIN Transactions T 
    USING (visit_id)
WHERE T.transaction_id is null 
GROUP BY customer_id

