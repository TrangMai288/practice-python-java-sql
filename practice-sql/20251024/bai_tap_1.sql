'''
testers: tester_id, name
bugs: bug_id, tester_id, status
'''

/* 
1. Liệt kê tên tester và bug họ phụ trách (INNER JOIN) 
2. Hiển thị tất cả tester (kể cả người chưa có bug)
3.Hiển thị tất cả bug, kể cả bug chưa có tester
4.
*/

/* Liệt kê tên tester và bug họ phụ trách (INNER JOIN) */
SELECT t.name, b.bug_id
FROM testers t
INNER JOIN bugs b ON t.tester_id = b.tester_id

/* Hiển thị tất cả tester (kể cả người chưa có bug) */
SELECT t.name, b.bug_id
FROM testers t
LEFT JOIN bugs b ON t.tester_id = b.tester_id

/* Hiển thị tất cả bug, kể cả bug chưa có tester */
SELECT t.name, b.bug_id
FROM testers t
RIGHT JOIN bugs b ON t.tester_id = b.tester_id

/* Đếm số bug mỗi tester đang xử lý */
SELECT t.name, COUNT(b.bug_id) AS total_bug
FROM testers t
LEFT JOIN bugs b ON t.tester_id = b.tester_id
GROUP BY t.name

/* Hiển thị tester có nhiều hơn 1 bug */
SELECT t.name, COUNT(b.bug_id) AS total_bug
FROM testers t
LEFT JOIN bugs b ON t.tester_id = b.tester_id
GROUP BY t.name
HAVING COUNT(b.bug_id) > 1