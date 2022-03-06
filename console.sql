USE quanlysinhvien;
SELECT * FROM student;
# Tính tổng tất cả học viên
SELECT COUNT(StudentId) AS 'Số lượng học viên'
FROM Student;
# Tính tổng tất cả học viên theo địa chỉ
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;
# Tính điểm trung bình các môn học của mỗi học viên
SELECT S.StudentID, S.StudentName, AVG(Mark)
FROM student S JOIN mark M on S.StudentID = M.StudentID
GROUP BY S.StudentID, S.StudentName;
# Hiển thị những học viên có điểm trung bình các môn học > 9
SELECT S.StudentID, S.StudentName, AVG(Mark)
FROM student S JOIN mark M ON S.StudentID = M.StudentID
GROUP BY S.StudentID, S.StudentName
HAVING AVG(Mark) > 9;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY StudentId);