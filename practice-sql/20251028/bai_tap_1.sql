'''
students: student_id, name, class_id
classes: class_id, class_name, teacher_id
teachers: teacher_id, teacher_name
'''

/* 
1. Hiển thị tên học sinh, tên lớp và tên giáo viên (chỉ những học sinh có lớp).
2. Tính tổng số học sinh của từng giáo viên.
3. Hiển thị tất cả giáo viên và số lớp họ phụ trách (kể cả giáo viên chưa dạy lớp nào).
*/

/* Hiển thị tên học sinh, tên lớp và tên giáo viên (chỉ những học sinh có lớp). */
SELECT s.name, c.class_name, t.teacher_name
FROM students s
JOIN classes c ON s.class_id = c.class_id
JOIN teachers t ON c.teacher_id = t.teacher_id

/* Tính tổng số học sinh của từng giáo viên. */
SELECT t.teacher_name, COUNT(s.student_id)
FROM teachers t
JOIN classes c ON c.teacher_id = t.teacher_id
JOIN students s ON s.class_id = c.class_id
GROUP BY t.teacher_name

/* Hiển thị tất cả giáo viên và số lớp họ phụ trách (kể cả giáo viên chưa dạy lớp nào). */
SELECT t.teacher_name, COUNT(c.class_id)
FROM teachers t
LEFT JOIN classes c ON c.teacher_id = t.teacher_id
GROUP BY t.teacher_name