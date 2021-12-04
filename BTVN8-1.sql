-- Tính chất lượng TB của từng giáo viên

SELECT tc.id, tc.name, SUM(c.quality) / COUNT(c.id) AS 'teacher_quality' FROM teacher AS tc
LEFT JOIN teachingclass AS tcc ON tcc.teacherId = tc.id
LEFT JOIN class c ON tcc.classId = c.id
GROUP BY tc.id, tc.name
HAVING teacher_quality >= 4.5
ORDER BY teacher_quality DESC;