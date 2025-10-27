'''
customers: customer_id, name, city
orders: order_id, customer_id, total_amount
order_items: item_id, order_id, product_name, quantity, price
'''

/* 
1. Liệt kê tên khách hàng, mã đơn hàng và tổng tiền đơn hàng (chỉ những khách có đơn hàng).
2. Hiển thị tất cả khách hàng và tổng số đơn hàng họ đã đặt (kể cả khách chưa đặt đơn nào).
3. Liệt kê tên sản phẩm, tên khách hàng và thành phố, chỉ với sản phẩm đã được đặt.
4. Tính tổng tiền chi tiêu của từng khách hàng dựa trên bảng "orders".
5. Liệt kê tên khách hàng có tổng chi tiêu cao nhất.
*/

/* Liệt kê tên khách hàng, mã đơn hàng và tổng tiền đơn hàng (chỉ những khách có đơn hàng). */
SELECT c.name, o.order_id, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id

/* Hiển thị tất cả khách hàng và tổng số đơn hàng họ đã đặt (kể cả khách chưa đặt đơn nào). */
SELECT c.name, COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name

/* Liệt kê tên sản phẩm, tên khách hàng và thành phố, chỉ với sản phẩm đã được đặt. */
SELECT oi.product_name, c.name, c.city
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON c.customer_id = o.customer_id

/* Tính tổng tiền chi tiêu của từng khách hàng dựa trên bảng "orders". */
SELECT c.name, COALESCE(SUM(o.total_amount),0) AS tong_chi_tieu
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name

/* Liệt kê tên khách hàng có tổng chi tiêu cao nhất. */
SELECT c.name, SUM(o.total_amount) AS tong_chi_tieu
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY tong_chi_tieu DESC
LIMIT 1