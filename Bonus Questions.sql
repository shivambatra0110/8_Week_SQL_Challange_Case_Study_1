--BONUS QUESTIONS--

--Use Database dannys_dinner
use dannys_dinner

-- Join All The Things--
-- Recreate the table with: customer_id, order_date, product_name, price, member (Y/N)
SELECT 
  s.customer_id, 
  s.order_date, 
  m.product_name, 
  m.price,
  CASE WHEN mm.join_date > s.order_date THEN 'N'
	  WHEN mm.join_date <= s.order_date THEN 'Y'
	  ELSE 'N' END AS Member
FROM sales AS s
LEFT JOIN menu AS m
	ON s.product_id = m.product_id
LEFT JOIN members AS mm
	ON s.customer_id = mm.customer_id
ORDER BY s.customer_id, s.order_date

-- Rank All The Things--
WITH summary_cte AS 
(
  SELECT 
    s.customer_id, 
    s.order_date, 
    m.product_name, 
    m.price,
    CASE WHEN mm.join_date > s.order_date THEN 'N'
	    WHEN mm.join_date <= s.order_date THEN 'Y'
	    ELSE 'N'END AS member
FROM sales AS s
LEFT JOIN menu AS m
	ON s.product_id = m.product_id
LEFT JOIN members AS mm
	ON s.customer_id = mm.customer_id
)

SELECT 
  *,
	CASE WHEN member = 'N' then NULL
    ELSE
			RANK () OVER(PARTITION BY customer_id, member ORDER BY order_date) 
		END AS ranking
FROM summary_cte;