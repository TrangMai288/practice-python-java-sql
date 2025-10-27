'''
students: student_id, name, class_id
classes: class_id, class_name, teacher_id
teachers: teacher_id, teacher_name
'''

/* 
1. Viết truy vấn lấy tên học sinh, tên lớp và tên giáo viên (chỉ với học sinh có lớp hợp lệ).
2. Viết truy vấn hiển thị tất cả học sinh kể cả chưa có lớp.
3. Viết truy vấn hiển thị tất cả lớp học và học sinh (kể cả lớp chưa có ai).
4. Viết truy vấn đếm số học sinh trong từng lớp, hiển thị cả lớp chưa có ai 
5. Viết truy vấn hiển thị tên giáo viên và tổng số học sinh họ phụ trách.
*/

/* Viết truy vấn lấy tên học sinh, tên lớp và tên giáo viên (chỉ với học sinh có lớp hợp lệ). */
SELECT s.name, c.class_name, t.teacher_name
FROM students s
INNER JOIN classes c ON s.class_id = c.class_id 
INNER JOIN teachers t ON c.teacher_id = t.teacher_id 

/* Viết truy vấn hiển thị tất cả học sinh kể cả chưa có lớp. */
SELECT s.name, c.class_name
FROM students s
LEFT JOIN classes c ON s.class_id = c.class_id 

/* Viết truy vấn hiển thị tất cả lớp học và học sinh (kể cả lớp chưa có ai). */
SELECT s.name, c.class_name
FROM classes c
LEFT JOIN students s ON s.class_id = c.class_id 

/* Viết truy vấn đếm số học sinh trong từng lớp, hiển thị cả lớp chưa có ai  */
SELECT c.class_name, COUNT(s.student_id) AS total_students
FROM classes c
LEFT JOIN students s ON s.class_id = c.class_id 
GROUP BY c.class_name

/* Viết truy vấn hiển thị tên giáo viên và tổng số học sinh họ phụ trách. */
SELECT t.teacher_name, COUNT(s.student_id)
FROM teachers t 
LEFT JOIN classes c ON c.teacher_id = t.teacher_id 
LEFT JOIN students s ON s.class_id = c.class_id 
GROUP BY t.teacher_name
