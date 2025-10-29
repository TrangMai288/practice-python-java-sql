'''
customers(customer_id, name, city)
orders(order_id, customer_id, order_date, total_amount)
order_details(order_id, product_name, quantity, unit_price)
'''

/* 1. Hãy hiển thị danh sách đơn hàng gồm: 
order_id, customer_name, city, order_date, total_amount */
/* 2. Hiển thị danh sách sản phẩm (product_name) 
kèm order_id, quantity, unit_price, total_price (= quantity * unit_price). */
/* 3. Tính tổng tiền hàng của mỗi khách (customer_name, total_amount_sum). */
/* 4. Lọc ra những khách có tổng đơn hàng trên 800000. */
/* 5. Tìm sản phẩm có đơn giá cao nhất. */

/* Hãy hiển thị danh sách đơn hàng gồm: 
order_id, customer_name, city, order_date, total_amount */
SELECT o.order_id, c.name, c.city, o.order_date, o.total_amount
FROM orders o
LEFT JOIN customers c ON c.customer_id = o.customer_id

/* Hiển thị danh sách sản phẩm (product_name) 
kèm order_id, quantity, unit_price, total_price (= quantity * unit_price). */
SELECT od.product_name, od.order_id, od.quantity, od.unit_price, (od.quantity * od.unit_price) AS total_price
FROM order_details od

/* Tính tổng tiền hàng của mỗi khách (customer_name, total_amount_sum). */
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_amount_sum
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name

/* Lọc ra những khách có tổng đơn hàng trên 800000. */
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_amount_sum
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total_amount) > 800000

/* Tìm sản phẩm có đơn giá cao nhất. */
SELECT product_name, unit_price 
FROM order_details
WHERE unit_price = (
    SELECT MAX(unit_price)
    FROM order_details
)