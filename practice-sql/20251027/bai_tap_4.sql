'''
employees: emp_id, emp_name, dept_id
departments: dept_id, dept_name
projects: project_id, project_name, dept_id
'''

/* 
1. Hiển thị tên nhân viên và tên phòng ban (chỉ những người có phòng ban).
2. Hiển thị tất cả phòng ban và nhân viên (kể cả phòng chưa có ai).
3. Liệt kê tên dự án và tên phòng ban phụ trách.
4. Liệt kê tên nhân viên và tên dự án họ có thể tham gia (dựa theo dept_id).
5. Tính số lượng nhân viên trong từng phòng ban, kể cả phòng trống.
*/

/* Hiển thị tên nhân viên và tên phòng ban (chỉ những người có phòng ban). */
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id

/* Hiển thị tất cả phòng ban và nhân viên (kể cả phòng chưa có ai). */
SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e ON e.dept_id = d.dept_id

/* Liệt kê tên dự án và tên phòng ban phụ trách. */
SELECT p.project_name, d.dept_name
FROM projects p
JOIN departments d ON p.dept_id = d.dept_id

/* Liệt kê tên nhân viên và tên dự án họ có thể tham gia (dựa theo dept_id). */
SELECT e.emp_name, p.project_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN projects p ON p.dept_id = d.dept_id

/* Tính số lượng nhân viên trong từng phòng ban, kể cả phòng trống. */
SELECT d.dept_name, COUNT(e.emp_id)
FROM departments d
LEFT JOIN employees e ON e.dept_id = d.dept_id
GROUP BY d.dept_name