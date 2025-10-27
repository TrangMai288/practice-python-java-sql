'''
employees: emp_id, emp_name, dept_id
departments: dept_id, dept_name
'''

/* 
1. Lấy danh sách nhân viên và tên phòng ban (chỉ những người có phòng ban hợp lệ).
2. Lấy tất cả nhân viên, kể cả nếu chưa có phòng ban.
3. Lấy danh sách tất cả phòng ban và nhân viên (kể cả phòng chưa có ai).
*/

/* Lấy danh sách nhân viên và tên phòng ban (chỉ những người có phòng ban hợp lệ). */
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id

/* Lấy tất cả nhân viên, kể cả nếu chưa có phòng ban. */
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id

/* Lấy danh sách tất cả phòng ban và nhân viên (kể cả phòng chưa có ai). */
SELECT e.emp_name, d.dept_name
FROM employees e
FULL JOIN departments d ON e.dept_id = d.dept_id
""" 
FULL JOIN (nếu SQL hỗ trợ, như PostgreSQL), hoặc
LEFT JOIN + RIGHT JOIN rồi UNION lại (nếu MySQL).
""" 