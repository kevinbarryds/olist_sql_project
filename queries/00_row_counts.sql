SELECT 'customers' AS tbl, COUNT(*) AS n FROM customers;



SELECT
  (SELECT COUNT(*) FROM customers)                         AS customers,
  (SELECT COUNT(*) FROM orders)                            AS orders,
  (SELECT COUNT(*) FROM order_items)                       AS order_items,
  (SELECT COUNT(*) FROM order_payments)                    AS order_payments,
  (SELECT COUNT(*) FROM order_reviews)                     AS order_reviews,
  (SELECT COUNT(*) FROM products)                          AS products,
  (SELECT COUNT(*) FROM sellers)                           AS sellers,
  (SELECT COUNT(*) FROM geolocation)                       AS geolocation,
  (SELECT COUNT(*) FROM product_category_name_translation) AS category_translation,
  (SELECT COUNT(*) FROM leads_qualified)                   AS leads_qualified,
  (SELECT COUNT(*) FROM leads_closed)                      AS leads_closed;