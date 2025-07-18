SELECT ROUND(AVG(session_length_mins),1), student_level
FROM student_ai_sessions
GROUP BY student_level

