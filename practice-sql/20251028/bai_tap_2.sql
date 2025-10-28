'''
students(student_id, name, class_id)
classes(class_id, class_name, teacher_id)
teachers(teacher_id, teacher_name)
'''

/* 1. Viết truy vấn hiển thị: Tên học sinh, tên lớp, tên giáo viên phụ trách */
/* 2. Viết truy vấn hiển thị: Tên lớp, số lượng học sinh trong lớp đó (hiển thị cả lớp chưa có học sinh) */
/* 3. Viết truy vấn hiển thị: Tên giáo viên, tổng số học sinh họ đang dạy.
Chỉ hiển thị những giáo viên có hơn 5 học sinh */
/* 4. Viết truy vấn tính số học sinh trung bình mà mỗi giáo viên phụ trách 
(tức là: tổng số học sinh của giáo viên / số lớp mà họ dạy). */
/* 5. Viết truy vấn hiển thị tên giáo viên, tên lớp, và số lượng học sinh,
chỉ lấy lớp có số học sinh nhiều nhất trong toàn hệ thống. */

/* Viết truy vấn hiển thị: Tên học sinh, tên lớp, tên giáo viên phụ trách */
SELECT s.name, c.class_name, t.teacher_name
FROM students s
JOIN classes c ON s.class_id = c.class_id
JOIN teachers t ON c.teacher_id = t.teacher_id

/* Viết truy vấn hiển thị: Tên lớp, số lượng học sinh trong lớp đó (hiển thị cả lớp chưa có học sinh) */
SELECT c.class_name, COUNT(s.student_id) AS total_students
FROM classes c
LEFT JOIN students s ON c.class_id = s.class_id
GROUP BY c.class_name

/* Viết truy vấn hiển thị: Tên giáo viên, tổng số học sinh họ đang dạy.
Chỉ hiển thị những giáo viên có hơn 5 học sinh */
SELECT t.teacher_name, COUNT(s.student_id)
FROM teachers t
JOIN classes c ON c.teacher_id = t.teacher_id
JOIN students s ON c.class_id = s.class_id
GROUP BY t.teacher_name
HAVING COUNT(s.student_id) > 5

/* Viết truy vấn tính số học sinh trung bình mà mỗi giáo viên phụ trách 
(tức là: tổng số học sinh của giáo viên / số lớp mà họ dạy). */
SELECT t.teacher_name, COUNT(s.student_id) / COUNT(DISTINCT c.class_id) AS so_hoc_sinh_trung_binh
FROM teachers t
JOIN classes c ON c.teacher_id = t.teacher_id
JOIN students s ON c.class_id = s.class_id
GROUP BY t.teacher_name
'''
Công thức bạn viết đúng ý, nhưng COUNT(s.student_id) / COUNT(c.class_id) sẽ không chính xác 
nếu 1 giáo viên dạy nhiều lớp có nhiều học sinh — vì mỗi học sinh được đếm lặp.
👉 Thêm DISTINCT để mỗi lớp chỉ được đếm một lần trong mẫu số.
'''

/* Viết truy vấn hiển thị tên giáo viên, tên lớp, và số lượng học sinh,
chỉ lấy lớp có số học sinh nhiều nhất trong toàn hệ thống. */
SELECT t.teacher_name, c.class_name, COUNT(s.student_id) as so_luong_hoc_sinh
FROM teachers t
JOIN classes c ON c.teacher_id = t.teacher_id
JOIN students s ON c.class_id = s.class_id
GROUP BY t.teacher_name, c.class_name
HAVING COUNT(s.student_id) = (
    SELECT MAX(so_luong)
    FROM (
        SELECT COUNT(s2.student_id) AS so_luong
        FROM classes c2
        JOIN students s2 ON c2.class_id = s2.class_id
        GROUP BY c2.class_id
    )
)
'''
Truy vấn của bạn chạy được 
nhưng nếu có 2 lớp đồng số lượng học sinh cao nhất, 
thì câu lệnh LIMIT 1 sẽ chỉ lấy 1 lớp.
'''
